#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config
polybar top 2>&1 | tee -a /tmp/polybar_top.log & disown

is_dual_monitor=$(xrandr -q | grep 'HDMI')
if [[ "$is_dual_monitor" = *connect* ]]; then
    polybar top_external 2>&1 | tee -a /tmp/polybar_top_external.log & disown
fi
