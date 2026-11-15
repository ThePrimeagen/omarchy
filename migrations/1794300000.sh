echo "Put the Omarchy Limine defaults back into the boot image Plymouth needs"

# Kernel 7.1 unpacks the initramfs asynchronously, which races /init: the
# early /proc, /sys, /dev, and /run mounts fail while unpacking settles, so
# plymouthd exits when it can't read /proc/cmdline and encrypted boots fall
# back to an unthemed text LUKS prompt, unless the booted entry carries
# initramfs_async=0. omarchy-defaults.conf carries that parameter (and the
# other Omarchy defaults) for fresh installs, but a plain
# KERNEL_CMDLINE[default]= in /etc/default/limine replaces every earlier +=
# layer, so a boot image built from that file loses them all. Rebuilding
# alone cannot bring them back. Append any defaults parameter the effective
# command line is missing as += in that last layer, then rebuild.

defaults_conf="${OMARCHY_LIMINE_DEFAULTS_CONF:-/etc/limine-entry-tool.d/omarchy-defaults.conf}"
limine_default="${OMARCHY_LIMINE_DEFAULT_CONF:-/etc/default/limine}"
rebuild_marker="${OMARCHY_LIMINE_REBUILD_MARKER:-/var/lib/omarchy/migrations/1794300000}"

omarchy-cmd-present limine-mkinitcpio || exit 0
[[ -f $defaults_conf && -f $limine_default ]] || exit 0
[[ ! -e $rebuild_marker ]] || exit 0

defaults_params=()
while IFS= read -r line || [[ -n $line ]]; do
  [[ $line =~ ^KERNEL_CMDLINE\[default\]\+=\"(.*)\"[[:space:]]*$ ]] || continue
  for param in ${BASH_REMATCH[1]}; do
    defaults_params+=("$param")
  done
done <"$defaults_conf"

(( ${#defaults_params[@]} )) || exit 0

effective=
shopt -s nullglob
for conf in /usr/share/limine-entry-tool.d/*.conf /etc/limine-entry-tool.conf /etc/limine-entry-tool.d/*.conf "$limine_default"; do
  [[ -f $conf ]] || continue
  while IFS= read -r line || [[ -n $line ]]; do
    [[ $line =~ ^[[:space:]]*KERNEL_CMDLINE\[default\][[:space:]]*(\+?)=[[:space:]]*(.*)$ ]] || continue
    appending=${BASH_REMATCH[1]}
    value=${BASH_REMATCH[2]}
    [[ $value == \"*\" ]] && value=${value:1:-1}
    if [[ -n $appending ]]; then
      effective+=" $value"
    else
      effective=$value
    fi
  done <"$conf"
done
shopt -u nullglob

missing_params=()
for param in "${defaults_params[@]}"; do
  [[ " $effective " == *" $param "* ]] || missing_params+=("$param")
done

kernel_cmdline_file=/etc/kernel/cmdline
kernel_missing=()
if [[ -f $kernel_cmdline_file ]]; then
  kernel_cmdline=$(<"$kernel_cmdline_file")
  for param in "${defaults_params[@]}"; do
    [[ " $kernel_cmdline " == *" $param "* ]] || kernel_missing+=("$param")
  done
fi

(( ${#missing_params[@]} || ${#kernel_missing[@]} )) || exit 0

echo "The Limine command line is missing ${missing_params[*]}; adding it and rebuilding the boot image"
if (( ${#missing_params[@]} )); then
  printf 'KERNEL_CMDLINE[default]+=" %s"\n' "${missing_params[*]}" | sudo tee -a "$limine_default" >/dev/null
fi
if (( ${#kernel_missing[@]} )); then
  printf ' %s' "${kernel_missing[*]}" | sudo tee -a "$kernel_cmdline_file" >/dev/null
fi
sudo limine-mkinitcpio
sudo install -Dm644 /dev/null "$rebuild_marker"
