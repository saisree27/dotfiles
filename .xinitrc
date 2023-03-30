#!/bin/sh
xrandr --setprovideroutputsource modesetting NVIDIA-0

NUM=$(xrandr -q | grep -w connected | wc -l)
if [ $NUM = "2" ] 
then
    xrandr --output DP-2 --off --output HDMI-0 --primary --mode 2560x1440 --rate 144
else
    xrandr --auto
    xrandr --dpi 96
fi

picom --config ~/.config/picom.conf --backend glx &
feh --bg-fill ~/Pictures/w4.jpg &
flameshot &
dunst &
xsetroot -cursor_name left_ptr 
[ -f ~/.xprofile ] && . ~/.xprofile
exec bspwm 
