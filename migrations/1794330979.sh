echo "Bring back Files with SFTP support"

omarchy-pkg-add nautilus gvfs openssh

# The packaged mimeapps.list now names Nautilus, but a personal one in
# ~/.config still wins, so point any Folio association there at Nautilus
# too.
user_mimeapps="$HOME/.config/mimeapps.list"
if [[ -f $user_mimeapps ]] && grep -q "folio.desktop" "$user_mimeapps"; then
  sed --follow-symlinks -i 's/folio\.desktop/org.gnome.Nautilus.desktop/g' "$user_mimeapps"
fi

# A dock that still pins Folio pins Nautilus instead.
shell_json="$HOME/.config/omarchy/shell.json"
if [[ -f $shell_json ]] && grep -q '"folio"' "$shell_json"; then
  sed --follow-symlinks -i 's/"folio"/"org.gnome.Nautilus"/' "$shell_json"
fi
