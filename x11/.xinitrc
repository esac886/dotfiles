#!/bin/sh

# load xrandr monitor profile
autorandr --change
# add ru layout
setxkbmap -layout us,ru -option grp:lwin_toggle
# disable sleep
xset s off -dpms
# wallpaper
feh --no-fehbg --bg-scale $XDG_DATA_HOME/bg
# bar
dwmblocks &
# wm
exec dwm
