#!/bin/bash
#eval `dbus-launch --auto-syntax --exit-with-session`
dbus-update-activation-environment --systemd DISPLAY
export GNOME_DESKTOP_SESSION_ID=Default
export LC_CTYPE=zh_CN.UTF-8
export LANG=zh_CN.utf-8
export INPUT_METHOD=fcitx
export XMODIFIERS=@im=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export TERM=xterm-256color
export $(gnome-keyring-daemon -s)

## vertical screen 0 1 2 3
#xrandr -o 0
# double screen
#xrandr --output "DP-0" --primary --auto --output "HDMI-0" --right-of "DP-0" --auto
#xrandr --output DVI-0 --auto --pos 0x0 --output DisplayPort-0 --auto --right-of DVI-0
#xrandr --output HDMI1 --mode 1920x1080 --pos 0x0 --output VGA1 --auto --left-of HDMI1

xset dpms 300
xset s off
xset b off

#[ -f /usr/bin/nm-applet ] && nm-applet &
#[ -f /usr/bin/fcitx ] && fcitx -d &> /dev/null
#[ -f /usr/bin/volumeicon ] && volumeicon &
#[ -f /usr/bin/urxvtd ] && /usr/bin/urxvtd -q -f -o &
#[ -f /usr/bin/feh ] && /usr/bin/feh --bg-scale ~/dotfiles/wallpapers/get_away_from_my_computer-wallpaper-1920x1080.png &
#[ -f ~/.Xresources ] && xrdb -merge -I$HOME ~/.Xresources
#[ -f /usr/bin/xcompmgr ] && /usr/bin/xcompmgr -fnc &
#[ -f $HOME/.Xmodmap ] && /usr/bin/xmodmap $HOME/.Xmodmap
[ -f /usr/bin/i3 ] && exec /usr/bin/i3
#[ -f /usr/bin/awesome ] && exec /usr/bin/awesome
