#!/bin/bash
eval `dbus-launch --sh-syntax --exit-with-session`
export GNOME_DESKTOP_SESSION_ID=Default
export LC_CTYPE=zh_CN.UTF-8
export LANG=zh_CN.utf-8
export INPUT_METHOD=fcitx
export XMODIFIERS=@im=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
#export INPUT_METHOD=xim
#export GTK_IM_MODULE=xim
#export QT_IM_MODULE=xim
export TERM=xterm-256color
export $(gnome-keyring-daemon -s)

## left hand
#xmodmap -e "pointer = 3 2 1 4 5"
## right hand
#xmodmap -e "pointer = 1 2 3 4 5"
## vertical screen 0 1 2 3 
#xrandr -o 0
# double screen
#xrandr --output DVI-0 --auto --pos 0x0 --output DisplayPort-0 --auto --right-of DVI-0
#xrandr --output HDMI1 --mode 1920x1080 --pos 0x0 --output VGA1 --auto --left-of HDMI1

xset -dpms
xset s off
xset b off

[ -f /usr/bin/nm-applet ] && nm-applet &
[ -f /usr/bin/fcitx ] && fcitx -d &> /dev/null
[ -f /usr/bin/volumeicon ] && volumeicon &
[ -f /usr/bin/urxvtd ] && /usr/bin/urxvtd -q -f -o &
[ -f /usr/bin/feh ] && /usr/bin/feh --bg-scale /home/sugar/images/walls/noisy_arch_dark.jpg &
[ -f /usr/bin/numlockx ] && /usr/bin/numlockx
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
#[ -f /usr/bin/xcompmgr ] && /usr/bin/xcompmgr -fnc &
[ -f /usr/bin/i3 ] && exec /usr/bin/i3
