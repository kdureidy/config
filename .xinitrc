#!/bin/sh
hsetroot -tile Media/Wallpapers/Wallpaper.jpg &
xrandr --output DisplayPort-3 --primary --mode 1920x1080 --right-of DVI-0 --output DVI-0 --rotate left --output HDMI2 --right-of DisplayPort-3 --mode 1280x1024 &
exec i3
