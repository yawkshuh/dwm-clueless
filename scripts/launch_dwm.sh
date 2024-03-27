#!/bin/sh

#picom -CG --no-fading-openclose &
picom --config "$HOME/.config/picom.conf" &
/usr/lib/polkit-kde-authentication-agent-1 &
nm-applet --no-agent &
pasystray &
dunst &

# For Zephyrus only
rog-control-center &

# nitrogen /home/riccardo/Pictures/Wallpapers/Microsoft/393890-windows-11-microsoft-background-4k-pc-wallpaper.jpg &
nitrogen --restore &

while true; do
    xsetroot -name "Battery: $(cat /sys/class/power_supply/BAT0/capacity)% / $(date +%d"/"%m"/"%Y" "%R)"
    sleep 5
done &

xset s off -dpms
setxkbmap -layout us
xsetroot -cursor_name left_ptr
exec dwm
