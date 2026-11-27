#!/bin/bash

source "$(dirname "${BASH_SOURCE[0]}")/base-test.sh"

require_command lua
require_command socat

for bell_supported in false true; do
  OMARCHY_BELL_SUPPORTED="$bell_supported" lua - <<'LUA' || fail "look and feel loads before and after a Hyprland upgrade"
local supported = os.getenv("OMARCHY_BELL_SUPPORTED") == "true"
local bell
hl = {
  get_config = function(key)
    assert(key == "misc.bell_sound")
    if supported then return "default" end
    return nil, "unknown config key 'misc.bell_sound'"
  end,
  config = function(config)
    if config.misc then
      bell = config.misc.bell_sound
      assert(supported or bell == nil, "unknown config key 'misc.bell_sound'")
    end
  end,
  curve = function() end,
  animation = function() end,
}
dofile(os.getenv("ROOT") .. "/default/hypr/looknfeel.lua")
assert(bell == (supported and "none" or nil))
LUA
done
pass "look and feel mutes bells only when the running compositor supports it"

run_application_bindings() {
  local home="$1"
  local prelude="${2:-}"

  OMARCHY_REGION_FILE="${OMARCHY_REGION_FILE:-$tmpdir/no-region}" HOME="$home" XDG_CONFIG_HOME="$home/.config" XDG_STATE_HOME="$home/.local/state" OMARCHY_PATH="$ROOT" OMARCHY_BINDING_PRELUDE="$prelude" lua - <<'LUA'
package.path = os.getenv("HOME") .. "/.config/?.lua;" .. os.getenv("OMARCHY_PATH") .. "/?.lua;" .. package.path

local prelude = os.getenv("OMARCHY_BINDING_PRELUDE") or ""
if prelude ~= "" then
  assert(load(prelude))()
end

hl = {
  dsp = {
    exec_cmd = function(command)
      return { kind = "exec", arg = command }
    end,
  },
  bind = function(keys, dispatcher, opts)
    opts = opts or {}
    if opts.description then
      print(keys .. "\t" .. opts.description)
    end
  end,
}

require("default.hypr.helpers")
require("default.hypr.bindings.applications")
LUA
}

run_omarchy_bindings() {
  local home="$1"
  local prelude="${2:-}"

  OMARCHY_REGION_FILE="${OMARCHY_REGION_FILE:-$tmpdir/no-region}" HOME="$home" XDG_CONFIG_HOME="$home/.config" XDG_STATE_HOME="$home/.local/state" OMARCHY_PATH="$ROOT" OMARCHY_BINDING_PRELUDE="$prelude" lua - <<'LUA'
package.path = os.getenv("HOME") .. "/.config/?.lua;" .. os.getenv("OMARCHY_PATH") .. "/?.lua;" .. package.path

local function proxy()
  return setmetatable({}, {
    __index = function(self, key)
      local value = proxy()
      rawset(self, key, value)
      return value
    end,
    __call = function()
      return {}
    end,
  })
end

local prelude = os.getenv("OMARCHY_BINDING_PRELUDE") or ""
if prelude ~= "" then
  assert(load(prelude))()
end

hl = setmetatable({
  dsp = proxy(),
  bind = function(keys, dispatcher, opts)
    opts = opts or {}
    if opts.description then
      print(keys .. "\t" .. opts.description)
    end
  end,
  config = function() end,
  env = function() end,
  monitor = function() end,
  window_rule = function() end,
  workspace_rule = function() end,
  layer_rule = function() end,
  gesture = function() end,
  animation = function() end,
  curve = function() end,
  exec_cmd = function() end,
  dispatch = function() end,
  on = function() end,
  timer = function() end,
  get_config = function() return nil end,
  get_active_window = function() return nil end,
}, {
  __index = function()
    return function()
      return {}
    end
  end,
})

require("default.hypr.omarchy")
LUA
}

tmpdir=$(mktemp -d)
omasnap_server_pid=""
cleanup() {
  [[ -n $omasnap_server_pid ]] && kill "$omasnap_server_pid" 2>/dev/null || true
  rm -rf "$tmpdir"
}
trap cleanup EXIT

fresh_home="$tmpdir/fresh-home"
mkdir -p "$fresh_home"
fresh_output=$(run_application_bindings "$fresh_home")
grep -Fq $'SUPER + RETURN	Terminal' <<<"$fresh_output" || fail "default application bindings include essentials"
grep -Fq $'SUPER + SHIFT + A	ChatGPT' <<<"$fresh_output" || fail "default application bindings include preinstalled web apps"
grep -Fq $'SUPER + SHIFT + Q	Calculator' <<<"$fresh_output" || fail "default application bindings include the preinstalled calculator"
grep -Fq $'XF86Calculator	Calculator' <<<"$fresh_output" || fail "default application bindings include the calculator hardware key"
pass "default application bindings load from package defaults"

removed_home="$tmpdir/removed-home"
mkdir -p "$removed_home/.local/state/omarchy"
touch "$removed_home/.local/state/omarchy/preinstalls-removed"
removed_output=$(run_omarchy_bindings "$removed_home")
grep -Fq $'SUPER + RETURN	Terminal' <<<"$removed_output" || fail "preinstall removal keeps essential bindings"
if grep -Fq $'SUPER + SHIFT + A	ChatGPT' <<<"$removed_output"; then
  fail "preinstall removal skips preinstalled web app bindings"
fi
if grep -Fq $'	Calculator' <<<"$removed_output"; then
  fail "preinstall removal skips calculator bindings"
fi
pass "preinstall removal flag skips optional application bindings"

variable_home="$tmpdir/variable-home"
mkdir -p "$variable_home"
variable_output=$(run_omarchy_bindings "$variable_home" 'omarchy_preinstalled_bindings = false')
grep -Fq $'SUPER + RETURN	Terminal' <<<"$variable_output" || fail "preinstalled binding variable keeps essential bindings"
if grep -Fq $'SUPER + SHIFT + A	ChatGPT' <<<"$variable_output"; then
  fail "preinstalled binding variable skips optional application bindings"
fi
if grep -Fq $'	Calculator' <<<"$variable_output"; then
  fail "preinstalled binding variable skips calculator bindings"
fi
pass "preinstalled binding variable skips optional application bindings"

echo cn >"$tmpdir/region-cn"
region_output=$(OMARCHY_REGION_FILE="$tmpdir/region-cn" run_application_bindings "$fresh_home")
grep -Fq $'SUPER + SHIFT + Q	Calculator' <<<"$region_output" || fail "a region keeps the hotkeys that aren't web apps"
grep -Fq $'SUPER + SHIFT + Y	Bilibili' <<<"$region_output" || fail "China binds its own web apps"
for binding in $'SUPER + SHIFT + A	ChatGPT' $'SUPER + SHIFT + E	Email' $'SUPER + SHIFT + Y	YouTube' $'SUPER + SHIFT + M	Music' $'SUPER + SHIFT + G	Signal'; do
  if grep -Fq "$binding" <<<"$region_output"; then fail "China binds none of the global web app hotkeys" "$binding"; fi
done
pass "the region picks its web app hotkeys file"

no_bindings_home="$tmpdir/no-bindings-home"
mkdir -p "$no_bindings_home"
no_bindings_output=$(run_omarchy_bindings "$no_bindings_home" 'omarchy_default_bindings = false') ||
  fail "default binding variable disables all Omarchy bindings"
[[ -z $no_bindings_output ]] || fail "default binding variable disables all Omarchy bindings" "$no_bindings_output"
pass "default binding variable disables all Omarchy bindings"

dictation_home="$tmpdir/dictation-home"
missing_bin="$tmpdir/missing-bin"
mkdir -p "$dictation_home/.config/omarchy/defaults" "$missing_bin"
ln -s "$(command -v lua)" "$missing_bin/lua"
ln -s "$(command -v lspci)" "$missing_bin/lspci"
ln -s "$(command -v sort)" "$missing_bin/sort"
dictation_output=$(PATH="$missing_bin" run_omarchy_bindings "$dictation_home") ||
  fail "unconfigured dictation leaves application shortcuts available"
if grep -Fq 'dictation' <<<"$dictation_output"; then fail "unconfigured dictation leaves application shortcuts available"; fi
printf 'future-backend\n' > "$dictation_home/.config/omarchy/defaults/dictation"
dictation_output=$(PATH="$missing_bin" run_omarchy_bindings "$dictation_home") ||
  fail "a selected backend that is not installed leaves application shortcuts available"
if grep -Fq 'dictation' <<<"$dictation_output"; then fail "a selected backend that is not installed leaves application shortcuts available"; fi
printf '#!/bin/bash\nexit 0\n' > "$missing_bin/future-backend"
chmod +x "$missing_bin/future-backend"
dictation_output=$(PATH="$missing_bin" run_omarchy_bindings "$dictation_home")
for binding in \
  $'ALT + SPACE\tToggle dictation' \
  $'ALT + Alt_R\tStart dictation (push-to-talk)' \
  $'ALT + Alt_R\tStop dictation (push-to-talk)'; do
  grep -Fq "$binding" <<<"$dictation_output" || fail "dictation bindings load for any selected backend" "$binding"
done
pass "dictation bindings require an installed selection without hardcoding backends"

# Lazydocker is optional on new installs, while existing installs keep the hotkey.
lazydocker_bin="$tmpdir/lazydocker-bin"
mkdir -p "$lazydocker_bin"
touch "$lazydocker_bin/lazydocker"
chmod +x "$lazydocker_bin/lazydocker"
lazydocker_output=$(PATH="$lazydocker_bin:$PATH" run_application_bindings "$fresh_home")
grep -Fqx $'SUPER + SHIFT + D\tDocker' <<<"$lazydocker_output" ||
  fail "installed Lazydocker keeps its Docker shortcut"
pass "installed Lazydocker keeps its Docker shortcut"

missing_lazydocker_output=$(PATH="$missing_bin" run_application_bindings "$fresh_home") ||
  fail "missing Lazydocker skips its Docker shortcut"
if grep -Fq $'SUPER + SHIFT + D\tDocker' <<<"$missing_lazydocker_output"; then
  fail "missing Lazydocker skips its Docker shortcut"
fi
pass "missing Lazydocker skips its Docker shortcut"

# The original scratchpad stays separate from the Quake console.
scratchpad_home="$tmpdir/scratchpad-home"
mkdir -p "$scratchpad_home"
scratchpad_output=$(run_omarchy_bindings "$scratchpad_home")
grep -Fqx $'SUPER + S	Toggle scratchpad' <<<"$scratchpad_output" ||
  fail "scratchpad keeps its existing toggle binding"
grep -Fqx $'SUPER + code:49	Toggle Quake console' <<<"$scratchpad_output" ||
  fail "Quake console has its own toggle binding"
grep -Fqx $'SUPER + ALT + S	Move window to scratchpad' <<<"$scratchpad_output" ||
  fail "scratchpad keeps its existing move binding"
grep -Fqx $'SUPER + SHIFT + code:49	Move window to Quake console' <<<"$scratchpad_output" ||
  fail "Quake console has its own move binding"
pass "scratchpad and Quake console have separate bindings"

# Hyprland matches a keysym bind against what a key types without Shift, so a
# bind on / moves to the key US types / on where / needs Shift, unless that key
# types a letter there instead: F on bépo, where it would take Super + F.
passwords_key() {
  local home="$tmpdir/layout-$1-$2"
  mkdir -p "$home/.config/omarchy"
  printf 'XKBLAYOUT=%s\nXKBVARIANT=%s\n' "$1" "$2" >"$home/.config/omarchy/keyboard-layouts"
  run_omarchy_bindings "$home" | awk -F '\t' '$2 == "Passwords" { print $1 }'
}
[[ $(passwords_key us "") == "SUPER + SHIFT + SLASH" ]] || fail "/ binds stay on / where it types without Shift" "$(passwords_key us "")"
[[ $(passwords_key dk "") == "SUPER + SHIFT + code:61" ]] || fail "/ binds move to the key left of right Shift where / needs Shift" "$(passwords_key dk "")"
[[ $(passwords_key fr bepo) == "SUPER + SHIFT + SLASH" ]] || fail "/ binds never move onto a letter" "$(passwords_key fr bepo)"
pass "/ binds follow the leading keyboard layout"

# The panel hotkeys claim a row of keys that workspace switching already uses
# under other modifiers, so the count matters as much as the bindings: a tenth
# claim on SUPER + CTRL + a number is a collision with one of these.
panels_home="$tmpdir/panels-home"
mkdir -p "$panels_home"
panels_output=$(run_omarchy_bindings "$panels_home")
for panel in 1 2 3 4 5 6 7 8 9; do
  grep -Fqx "SUPER + CTRL + code:$((panel + 9))"$'\t'"Bar panel $panel" <<<"$panels_output" ||
    fail "bar panel hotkeys count the right section" "$panel"
done
number_claims=$(cut -f1 <<<"$panels_output" | grep -cE '^SUPER \+ CTRL \+ code:1[0-9]$' || true)
(( number_claims == 9 )) ||
  fail "only the bar panel hotkeys bind SUPER + CTRL + a number" "$number_claims"
pass "bar panel hotkeys bind SUPER + CTRL + a number without a collision"

# Super+W and Super+Q dismiss an active Omasnap overlay through its runtime
# socket and fall through to closing the focused window when no overlay listens.
fire_close_bind() {
  local keys="$1" runtime="$2" layers="${3:-}"

  HOME="$tmpdir/close-home" XDG_CONFIG_HOME="$tmpdir/close-home/.config" \
    XDG_STATE_HOME="$tmpdir/close-home/.local/state" XDG_RUNTIME_DIR="$runtime" \
    OMARCHY_PATH="$ROOT" TEST_KEYS="$keys" TEST_LAYERS="$layers" lua - <<'LUA'
package.path = os.getenv("OMARCHY_PATH") .. "/?.lua;" .. package.path

local binds = {}
local active_layers = {}
for namespace in (os.getenv("TEST_LAYERS") or ""):gmatch("[^,]+") do
  table.insert(active_layers, { namespace = namespace })
end

local function proxy()
  return setmetatable({}, {
    __index = function(self, key)
      local value = proxy()
      rawset(self, key, value)
      return value
    end,
    __call = function()
      return {}
    end,
  })
end

local close_token = { kind = "window.close" }
local dsp = proxy()
dsp.window.close = function() return close_token end

hl = {
  dsp = dsp,
  bind = function(keys, dispatcher)
    binds[keys] = dispatcher
  end,
  dispatch = function(action)
    if action == close_token then
      print("window.close")
    end
  end,
  get_layers = function(query)
    local matches = {}
    for _, layer in ipairs(active_layers) do
      if not query or not query.namespace or layer.namespace == query.namespace then
        table.insert(matches, layer)
      end
    end
    return matches
  end,
  exec_cmd = function() end,
  on = function() end,
}

require("default.hypr.helpers")
o.workspaces = proxy()
require("default.hypr.bindings.tiling")

local dispatcher = binds[os.getenv("TEST_KEYS")]
if type(dispatcher) == "function" then
  assert(o.bind_expressions[dispatcher] == "hl.dsp.window.close()", "close bind keeps its menu expression")
  dispatcher()
else
  hl.dispatch(dispatcher)
end
LUA
}

close_runtime="$tmpdir/close-runtime"
omasnap_socket="$close_runtime/omasnap/overlay-close.sock"
omasnap_hits="$tmpdir/omasnap-hits"
no_socat_bin="$tmpdir/no-socat-bin"
no_socat_log="$tmpdir/no-socat.log"
mkdir -p "$tmpdir/close-home" "$close_runtime/omasnap" "$no_socat_bin"
: >"$omasnap_hits"
: >"$no_socat_log"
cat >"$no_socat_bin/socat" <<'SH'
#!/bin/bash
printf '%s\n' "$*" >>"$NO_SOCAT_LOG"
exit 1
SH
chmod +x "$no_socat_bin/socat"

for keys in "SUPER + W" "SUPER + Q"; do
  close_out=$(PATH="$no_socat_bin:$PATH" NO_SOCAT_LOG="$no_socat_log" fire_close_bind "$keys" "$close_runtime" "") ||
    fail "$keys runs cleanly when no Omasnap layer is open" "$close_out"
  [[ $close_out == "window.close" ]] ||
    fail "$keys closes the focused window when no Omasnap layer is open" "$close_out"
done
[[ ! -s $no_socat_log ]] ||
  fail "closing a normal window skips socat when no Omasnap layer is open" "$(<"$no_socat_log")"
pass "Super+W and Super+Q close the focused window without spawning socat when no Omasnap layer is open"

OMASNAP_HITS="$omasnap_hits" socat UNIX-LISTEN:"$omasnap_socket",fork SYSTEM:'echo hit >> "$OMASNAP_HITS"' 2>/dev/null &
omasnap_server_pid=$!
for _ in $(seq 50); do [[ -S $omasnap_socket ]] && break; sleep 0.05; done
[[ -S $omasnap_socket ]] || fail "fake Omasnap dismissal socket starts listening"

expected_hits=0
for keys in "SUPER + W" "SUPER + Q"; do
  expected_hits=$(( expected_hits + 1 ))
  close_out=$(fire_close_bind "$keys" "$close_runtime" "omasnap") ||
    fail "$keys runs cleanly when an Omasnap overlay is listening" "$close_out"
  [[ -z $close_out ]] ||
    fail "$keys dismisses an open Omasnap overlay without closing the window underneath" "$close_out"
  for _ in $(seq 50); do
    (( $(wc -l <"$omasnap_hits") >= expected_hits )) && break
    sleep 0.05
  done
  (( $(wc -l <"$omasnap_hits") == expected_hits )) ||
    fail "$keys connects to Omasnap's overlay-close.sock" "$(<"$omasnap_hits")"
done
pass "Super+W and Super+Q dismiss an active Omasnap overlay via overlay-close.sock without closing the window underneath"

# A crashed Omasnap leaves its socket file behind with nothing listening. Without
# an omasnap layer, closing a window must skip socat; even if a layer were mapped
# with a stale or missing socket, close must still fall through to the window.
kill -9 "$omasnap_server_pid"
wait "$omasnap_server_pid" 2>/dev/null || true
omasnap_server_pid=""
[[ -S $omasnap_socket ]] || fail "killing the Omasnap listener leaves a stale socket behind"

: >"$no_socat_log"
close_out=$(PATH="$no_socat_bin:$PATH" NO_SOCAT_LOG="$no_socat_log" fire_close_bind "SUPER + W" "$close_runtime" "") ||
  fail "no Omasnap layer with a stale socket runs cleanly" "$close_out"
[[ $close_out == "window.close" && ! -s $no_socat_log ]] ||
  fail "no Omasnap layer closes the window without spawning socat even with a stale socket file" "out=$close_out log=$(<"$no_socat_log")"
pass "a stale Omasnap socket without an omasnap layer closes the window without spawning socat"

close_out=$(fire_close_bind "SUPER + W" "$close_runtime" "omasnap") ||
  fail "an Omasnap layer with a stale socket runs cleanly" "$close_out"
[[ $close_out == "window.close" ]] ||
  fail "an Omasnap layer with a stale socket falls through to closing the focused window" "$close_out"

rm -f "$omasnap_socket"
close_out=$(fire_close_bind "SUPER + W" "$close_runtime" "omasnap") ||
  fail "an Omasnap layer with a missing socket runs cleanly" "$close_out"
[[ $close_out == "window.close" ]] ||
  fail "an Omasnap layer with a missing socket falls through to closing the focused window" "$close_out"
pass "an Omasnap layer with a stale or missing socket falls through to closing the focused window"
