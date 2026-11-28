echo "Stop recording a built-in as switched off while a clone stands in for it"

# A clone listed in cloneSourceRestores is the one that put its built-in in
# disabledPlugins. The shell now works that out from the clone itself, so the
# entry it added goes, and the built-ins the user switched off stay. A clone
# that is gone or no longer parses is named <user>.<built-in name>, as
# omarchy-plugin-clone names it.
config_file="$HOME/.config/omarchy/shell.json"
[[ -s $config_file ]] || exit 0
jq -e '.cloneSourceRestores | type == "array"' "$config_file" >/dev/null || exit 0
config_file=$(realpath -- "$config_file")

user_prefix="${USER:-$(id -un)}."
sources=()
while IFS= read -r clone; do
  manifest="$HOME/.config/omarchy/plugins/$clone/manifest.json"
  source=$(jq -r '.omarchy.clonedFrom | strings | select(startswith("omarchy."))' "$manifest" 2>/dev/null || true)
  if [[ -n $source ]]; then
    sources+=("$source")
  elif [[ $clone == "$user_prefix"* ]]; then
    sources+=("omarchy.${clone#"$user_prefix"}")
  elif [[ $clone == *.* ]]; then
    sources+=("omarchy.${clone#*.}")
  fi
done < <(jq -r '.cloneSourceRestores[] | strings | select(contains("/") | not)' "$config_file")

tmp=$(mktemp -- "$config_file.XXXXXX")
trap 'rm -f -- "$tmp"' EXIT
jq '
  ($ARGS.positional | map(select(length > 0))) as $sources
  | del(.cloneSourceRestores)
  | if (.disabledPlugins | type) == "array" then .disabledPlugins -= $sources end
  | if .disabledPlugins == [] then del(.disabledPlugins) end
' "$config_file" --args "${sources[@]}" >"$tmp"
chmod --reference="$config_file" -- "$tmp"
mv -T -- "$tmp" "$config_file"
