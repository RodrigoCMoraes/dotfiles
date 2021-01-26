xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
xrandr --output eDP-1-1 --mode 1920x1080 --pos 1920x0 --output HDMI-0 --mode 1920x1080 --pos 0x0
setxkbmap -layout us -variant intl -option caps:escape
xset +fp /home/rodrigocm/.local/share/fonts           # Prepend a custom font path to Xorg's list of known font paths

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

exec i3
