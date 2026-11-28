echo "Stop recording a built-in as switched off while a clone stands in for it"

# A clone listed in cloneSourceRestores is the one that put its built-in in
# disabledPlugins. The shell now works that out from the clone itself, so the
# entry it added goes, and the built-ins the user switched off stay. A clone
# that is gone or no longer parses is named <user>.<built-in name>, as
# omarchy-plugin-clone names it.
config_file="$HOME/.config/omarchy/shell.json"
[[ -e $config_file ]] || exit 0
config_file=$(realpath -- "$config_file")
config=$(jq -cs '
  if length == 0 then empty
  elif length == 1 and (.[0] | type == "object") then .[0]
  else error("Expected one JSON object in shell.json") end
' "$config_file")
[[ -n $config ]] || exit 0
jq -e '.cloneSourceRestores | type == "array"' <<<"$config" >/dev/null || exit 0

sources=()
restored=()
while IFS= read -r clone; do
  manifest="$HOME/.config/omarchy/plugins/$clone/manifest.json"
  source=$(jq -ers '
    select(length == 1) | .[0].omarchy.clonedFrom | strings
    | select(test("^omarchy\\.[^/[:cntrl:]]+$"))
  ' "$manifest" 2>/dev/null) || source=""
  if [[ -z $source ]]; then
    # The account prefix can contain dots, so match against the disabled sources.
    source=$(jq -r --arg clone "$clone" '
      [.disabledPlugins | arrays | .[] | strings | select(startswith("omarchy.")) | . as $id
        | select($clone | endswith("." + ($id | ltrimstr("omarchy."))))]
      | unique | if length == 1 then .[0] else empty end
    ' <<<"$config")
  fi
  if [[ -n $source ]]; then
    sources+=("$source")
    restored+=("$clone")
  fi
done < <(jq -r '.cloneSourceRestores[] | strings | select(length > 0 and . != "." and . != ".." and (test("[/[:cntrl:]]") | not))' <<<"$config")
(( ${#restored[@]} )) || exit 0

tmp=$(mktemp -- "$config_file.XXXXXX")
trap 'rm -f -- "$tmp"' EXIT
jq --argjson restored "$(jq -cn --args '$ARGS.positional' -- "${restored[@]}")" '
  .cloneSourceRestores -= $restored
  | if .cloneSourceRestores == [] then del(.cloneSourceRestores) end
  | if (.disabledPlugins | type) == "array" then .disabledPlugins -= $ARGS.positional end
  | if .disabledPlugins == [] then del(.disabledPlugins) end
' --args "${sources[@]}" <<<"$config" >"$tmp"
chmod --reference="$config_file" -- "$tmp"
mv -T -- "$tmp" "$config_file"
