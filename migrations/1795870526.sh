echo "Switch Chromium browsers that never chose a frame to the system title bar"

# On the system title bar a Chromium browser drops its own frame and gets
# Omarchy's titlebar when it floats, in place of only the empty end of its tab
# strip to drag it by. New profiles start that way; this brings along the ones
# that already exist and never chose.
#
# A running browser writes its own Preferences back when it exits, so one that
# is open can only be switched once it is closed. Rather than ask for it to be
# closed mid-update, queue the switch for the next login and ask for a reboot:
# it runs before a browser is open again.
if ! running=$(omarchy-install-chromium-system-title-bar); then
  # It names the running browsers when they are why it failed. Failing with
  # none named is a write that did not go through, which stays pending.
  [[ -n $running ]] || exit 1

  omarchy-provision-next-boot add omarchy-install-chromium-system-title-bar
  omarchy-state set reboot-required
fi
