xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

# dual monitor where external monitor is left
xrandr --output DP-1-1 --primary --mode 1920x1080 --pos 0x0 --output eDP-1-1 --mode 1920x1080 --pos 1920x0

# set keyboard map to us with dead keys and casp lock as escape key
setxkbmap -layout us -variant intl -option caps:escape

# Prepend a custom font path to Xorg's list of known font paths
xset +fp $HOME/.local/share/fonts

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

unclutter &
exec i3
