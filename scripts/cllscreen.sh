#!/bin/bash

# Change Login and Lock screen wallpaper

BG_DIR="/home/$USER/wallpapers/wallpapers/misc"
IMG=$(ls $BG_DIR | sort -R | tail -n 1)

cp -f $BG_DIR/$IMG /usr/share/backgrounds/default.png
