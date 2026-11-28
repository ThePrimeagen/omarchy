#!/bin/bash

set -euo pipefail

source "$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)/base-test.sh"

# A command queued for the next login runs once and leaves the queue; one that
# fails stays for the login after; only Omarchy commands can be queued.

tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT

mkdir -p "$tmp/bin"
printf '#!/bin/bash\necho ran >>"%s/ran"\n' "$tmp" >"$tmp/bin/omarchy-test-finish"
printf '#!/bin/bash\n[[ -e "%s/app-closed" ]]\n' "$tmp" >"$tmp/bin/omarchy-test-retry"
chmod +x "$tmp/bin"/*
queue="$tmp/home/.local/state/omarchy/next-boot"
next_boot() { HOME="$tmp/home" OMARCHY_PATH="$tmp" "$ROOT/bin/omarchy-provision-next-boot" "$@"; }

next_boot >/dev/null 2>&1 || fail "with nothing queued it does nothing"
next_boot add "rm -rf ~" 2>/dev/null && fail "a shell line can't be queued"
next_boot add omarchy-test-finish
next_boot add omarchy-test-retry
next_boot add omarchy-test-removed
next_boot 2>/dev/null
[[ $(cat "$tmp/ran") == "ran" && ! -e $queue/omarchy-test-finish ]] || fail "a queued command runs and leaves the queue"
[[ -e $queue/omarchy-test-retry ]] || fail "a command that fails stays queued"
[[ ! -e $queue/omarchy-test-removed ]] || fail "a command that no longer exists leaves the queue"
touch "$tmp/app-closed"
next_boot
[[ $(cat "$tmp/ran") == "ran" && ! -e $queue/omarchy-test-retry ]] || fail "the next login runs only what is still queued"
pass "commands queued for the next login run once, and a failure waits for the login after"
