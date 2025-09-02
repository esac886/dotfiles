#!/bin/sh

# audio
pipewire &
# load xrandr monitor profile
autorandr -c
# add ru layout (now in /etc/X11/xorg.conf.d/00-keyboard.conf)
# setxkbmap -layout us,ru -option grp:menu_toggle
# disable sleep
xset s off -dpms
# wallpaper
feh --no-fehbg --bg-scale $XDG_DATA_HOME/bg
# bar
dwmblocks &
# composer
picom -b
# for qt apps to see my cursor
export XCURSOR_PATH=$HOME/.local/share/icons
# wm
exec dbus-run-session dwm
