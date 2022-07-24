#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

if [ -f $HOME/.config/autostart/lxrandr-autostart.desktop ]; then
    grep -o "'.*'" $HOME/.config/autostart/lxrandr-autostart.desktop | sed "s/'//g" | sh &
fi

# set keyboard layout where capslock is escape key
setxkbmap -layout us -variant intl -option caps:escape

# Prepend a custom font path to Xorg's list of known font paths
xset +fp $HOME/.local/share/fonts

# set a typematic delay to 180ms and a typematic rate to 60Hz
xset r rate 180 60

# hide mouse pointer when it is unused
unclutter &
# start bspwm
exec bspwm
