#!/bin/bash

set -euo pipefail

source "$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)/base-test.sh"

require_quickshell "remote session service test"
require_command grim
require_command hyprctl
require_command pgrep

qml_fixture_scratch

real_hyprctl=$(type -P hyprctl)
real_pgrep=$(type -P pgrep)
stub_name="gt-$$"
run_id="remote-session-test-$$"
rule_initialized=0

eval_hyprctl() {
  local reply
  if ! reply=$("$real_hyprctl" eval "$1" 2>&1); then
    echo "hyprctl eval failed: $reply" >&2
    return 1
  fi
  if [[ $reply != "ok" ]]; then
    echo "hyprctl eval returned unexpected reply: $reply" >&2
    return 1
  fi
}

cleanup() {
  local status=$?
  if [[ -f $QML_FIXTURE_TMP/stub.pid ]]; then
    kill "$(<"$QML_FIXTURE_TMP/stub.pid")" 2>/dev/null || true
  fi
  qml_fixture_cleanup
  if (( rule_initialized )); then
    if ! eval_hyprctl "if omarchy_test_capture_run == \"$run_id\" then omarchy_test_capture_run = nil; hl.window_rule({ name = \"omarchy-test-remote-screen-share\", enabled = false }); omarchy_test_capture_rule = nil; omarchy_test_capture_owner = nil; omarchy_test_closed_capture_owners = nil end"; then
      if (( status == 0 )); then
        status=1
      fi
    fi
  fi
  exit "$status"
}
trap cleanup EXIT

# Live desktop omarchy-shell also runs remote-session/Service.qml against the
# same Hyprland compositor when OMARCHY_TEST_USE_LIVE_COMPOSITOR=1. Give the
# fixture its own Hyprland Lua namespace, a non-matching window class, and a
# per-run guard so the two services never overwrite each other's
# omarchy_capture_owner, lower live screen-share protection, or undo cleanup.
cat >"$QML_FIXTURE_TMP/bin/hyprctl" <<SH
#!/bin/bash
if [[ \${1:-} != "eval" ]] || (( \$# != 2 )); then
  echo "unexpected hyprctl invocation in remote-session test: \$*" >&2
  exit 1
fi
lua=\$2
assert_re='^(assert\(omarchy_closed_capture_owners\["[0-9]+-[a-z0-9]*"\]\); )?(assert\(omarchy_capture_owner == "[0-9]+-[a-z0-9]*"\); )?assert\(omarchy_test_capture_rule:is_enabled\(\) == (true|false)\)$'
mutate_re='^omarchy_closed_capture_owners = omarchy_closed_capture_owners or \{\}; (omarchy_closed_capture_owners\["[0-9]+-[a-z0-9]*"\] = true; if omarchy_capture_owner == "[0-9]+-[a-z0-9]*" then |if not omarchy_closed_capture_owners\["[0-9]+-[a-z0-9]*"\] then omarchy_capture_owner = "[0-9]+-[a-z0-9]*"; )hl\.window_rule\(\{ name = "omarchy-remote-screen-share", match = \{ class = "\.\*" \}, no_screen_share = false, enabled = (true|false) \}\); end$'
if [[ \$lua =~ \$assert_re ]]; then
  lua=\${lua//omarchy_capture_owner/omarchy_test_capture_owner}
  lua=\${lua//omarchy_closed_capture_owners/omarchy_test_closed_capture_owners}
  exec $(printf "%q" "$real_hyprctl") eval "assert(omarchy_test_capture_run == \"$(printf "%s" "$run_id")\"); \$lua"
elif [[ \$lua =~ \$mutate_re ]]; then
  lua=\${lua//'name = "omarchy-remote-screen-share"'/'name = "omarchy-test-remote-screen-share"'}
  lua=\${lua//'match = { class = ".*" }'/'match = { class = "^omarchy-remote-session-test-never-match$" }'}
  lua=\${lua//omarchy_capture_owner/omarchy_test_capture_owner}
  lua=\${lua//omarchy_closed_capture_owners/omarchy_test_closed_capture_owners}
  exec $(printf "%q" "$real_hyprctl") eval "if omarchy_test_capture_run == \"$(printf "%s" "$run_id")\" then \$lua end"
else
  echo "unexpected hyprctl eval payload in remote-session test: \$lua" >&2
  exit 1
fi
SH
chmod +x "$QML_FIXTURE_TMP/bin/hyprctl"

# Launch the stub directly under a per-test process name so no process named
# gliff-server is ever visible to a live omarchy-shell, and a real gliff-server
# session cannot break this fixture's idle or peer assertions.
cat >"$QML_FIXTURE_TMP/bin/$stub_name" <<'SH'
#!/bin/bash
sleep 30 &
trap 'kill $!' TERM EXIT
wait $!
SH
chmod +x "$QML_FIXTURE_TMP/bin/$stub_name"

cat >"$QML_FIXTURE_TMP/bin/pgrep" <<SH
#!/bin/bash
if [[ \${1:-} == "-x" && \${2:-} == "-u" && \${4:-} == "gliff-server" ]] && (( \$# == 4 )); then
  exec $(printf "%q" "$real_pgrep") -x -u "\$3" $(printf "%q" "$stub_name")
else
  exec $(printf "%q" "$real_pgrep") "\$@"
fi
SH
chmod +x "$QML_FIXTURE_TMP/bin/pgrep"

rule_initialized=1
eval_hyprctl "omarchy_test_capture_run = \"$run_id\"; omarchy_test_capture_owner = nil; omarchy_test_closed_capture_owners = nil; omarchy_test_capture_rule = hl.window_rule({ name = \"omarchy-test-remote-screen-share\", match = { class = \"^omarchy-remote-session-test-never-match$\" }, enabled = false })"

OMARCHY_QML_TEST_STUB_BIN="$QML_FIXTURE_TMP/bin/$stub_name" \
OMARCHY_QML_TEST_STUB_PID="$QML_FIXTURE_TMP/stub.pid" \
OMARCHY_QML_TEST_FRAME="$QML_FIXTURE_TMP/frame.png" \
  run_qml_fixture remote-session "remote session service tracks a gliff-server session"

[[ -s $QML_FIXTURE_TMP/frame.png ]] || fail "the fixture raised screencast events through grim"
pass "the fixture raised screencast events through grim"
