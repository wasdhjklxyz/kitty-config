if [ -n "$KITTY_PID" ]; then
  GNOME_COLOR_SCHEME=$(gsettings get org.gnome.desktop.interface color-scheme)
  if [[ "${GNOME_COLOR_SCHEME//\'/}" == "default" ]]; then
    export KITTY_COLORS="light"
  else
    export KITTY_COLORS="default"
  fi
  kitty @ set-colors --all "~/.config/kitty/colors/$KITTY_COLORS.conf"
fi
