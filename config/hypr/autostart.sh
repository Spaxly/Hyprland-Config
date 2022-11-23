#!/bin/bash

/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

function run () {
  local cmd=$@
  if ! pgrep -x $cmd; then
    $cmd &
  fi
}

killall waybar
run waybar -c ~/.config/hypr/apps/waybar/config -s ~/.config/hypr/apps/waybar/style.css
swaybg --image ~/.config/hypr/wallpapers/blue_pink_gradient.png &
mako --config ~/.config/hypr/apps/mako/mocha &
~/.config/hypr/scripts/fix_gtk &
