#!/bin/bash

set -euo pipefail

source "$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)/base-test.sh"

tmpdir=$(mktemp -d)
trap 'rm -rf "$tmpdir"' EXIT

stub_bin="$tmpdir/bin"
sudo_log="$tmpdir/sudo.log"
output="$tmpdir/output"
mkdir -p "$stub_bin"

cat >"$stub_bin/omarchy-boot-backend" <<'SH'
#!/bin/bash
printf '%s\n' "${STUB_BOOT_BACKEND:-limine}"
SH
chmod +x "$stub_bin/omarchy-boot-backend"

cat >"$stub_bin/sudo" <<'SH'
#!/bin/bash
printf '%s\n' "$*" >>"$SUDO_LOG"

if [[ ${SUDO_MODE:-} == "deny" ]]; then
  exit 1
fi

# Under sudo's default verifypw=all, sudo -v still fails without a password even
# when passwordless sudo allows commands to run.
if [[ ${SUDO_MODE:-} == "passwordless" && ${1:-} == "-v" ]]; then
  exit 1
fi

if [[ -n ${SUDO_FAIL_CMD:-} && ${1:-} == "$SUDO_FAIL_CMD" ]]; then
  exit 1
fi

case "${1:-}" in
  true)
    exit 0
    ;;
  test)
    if [[ ${2:-} == "-f" && ${3:-} == "/boot/limine.conf" ]]; then
      [[ ${STUB_LIMINE_CONF:-present} == "present" ]]
      exit $?
    fi
    exit 1
    ;;
  mv)
    if [[ ${2:-} == "/boot/limine.conf" && ${STUB_LIMINE_CONF:-present} == "missing" ]]; then
      exit 1
    fi
    exit 0
    ;;
  *)
    exit 0
    ;;
esac
SH
chmod +x "$stub_bin/sudo"

run_refresh() {
  : >"$sudo_log"
  SUDO_LOG="$sudo_log" PATH="$stub_bin:$PATH" \
    "$ROOT/bin/omarchy-refresh-limine" >"$output" 2>&1
}

# A denied or cancelled sudo prompt stops immediately without printing the reset
# banner or running any further sudo commands.
if SUDO_MODE=deny run_refresh; then
  fail "omarchy-refresh-limine exits non-zero when sudo fails"
fi
if grep -Fq 'Resetting limine config' "$output"; then
  fail "omarchy-refresh-limine does not print Resetting limine config after failed sudo" "$(cat "$output")"
fi
(( $(wc -l <"$sudo_log") == 1 )) && [[ $(cat "$sudo_log") == "true" ]] ||
  fail "omarchy-refresh-limine stops after the initial sudo authorization fails" "$(cat "$sudo_log")"
pass "omarchy-refresh-limine stops immediately when sudo fails"

# Passwordless sudo (verifypw=all refuses sudo -v) still backs up and restores
# an existing /boot/limine.conf.
SUDO_MODE=passwordless STUB_LIMINE_CONF=present run_refresh ||
  fail "omarchy-refresh-limine succeeds under passwordless sudo" "$(cat "$output")"
grep -Fxq 'true' "$sudo_log" || fail "omarchy-refresh-limine authorizes with sudo true" "$(cat "$sudo_log")"
! grep -Fxq -- '-v' "$sudo_log" || fail "omarchy-refresh-limine does not call sudo -v" "$(cat "$sudo_log")"
grep -Fxq 'mv /boot/limine.conf /boot/limine.conf.bak' "$sudo_log" ||
  fail "omarchy-refresh-limine backs up an existing /boot/limine.conf" "$(cat "$sudo_log")"
grep -Fxq "cp $ROOT/default/limine/limine.conf /boot/limine.conf" "$sudo_log" ||
  fail "omarchy-refresh-limine copies the default limine.conf" "$(cat "$sudo_log")"
grep -Fxq 'limine-update' "$sudo_log" && grep -Fxq 'limine-snapper-sync' "$sudo_log" ||
  fail "omarchy-refresh-limine rebuilds and syncs limine" "$(cat "$sudo_log")"
pass "omarchy-refresh-limine backs up and restores limine.conf under passwordless sudo"

# Missing /boot/limine.conf skips the backup instead of aborting under set -e.
SUDO_MODE=passwordless STUB_LIMINE_CONF=missing run_refresh ||
  fail "omarchy-refresh-limine restores /boot/limine.conf when no existing config is present" "$(cat "$output")"
! grep -q '^mv ' "$sudo_log" ||
  fail "omarchy-refresh-limine skips backup when /boot/limine.conf is missing" "$(cat "$sudo_log")"
grep -Fxq "cp $ROOT/default/limine/limine.conf /boot/limine.conf" "$sudo_log" ||
  fail "omarchy-refresh-limine still copies the default limine.conf when missing" "$(cat "$sudo_log")"
pass "omarchy-refresh-limine restores a missing /boot/limine.conf without failing backup"

# A later failing sudo command stops before subsequent rebuild steps.
if SUDO_MODE=passwordless SUDO_FAIL_CMD=cp run_refresh; then
  fail "omarchy-refresh-limine exits non-zero when a later sudo command fails"
fi
! grep -Fxq 'limine-update' "$sudo_log" && ! grep -Fxq 'limine-snapper-sync' "$sudo_log" ||
  fail "omarchy-refresh-limine does not continue after a failed cp" "$(cat "$sudo_log")"
pass "omarchy-refresh-limine stops on a later failing sudo command"
