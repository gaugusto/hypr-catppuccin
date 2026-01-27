#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/.config/backgrounds/"

# Get a random wallpaper that is not the current one
WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

# Apply the selected wallpaper
echo $WALLPAPER
hyprctl hyprpaper wallpaper ",$WALLPAPER,cover"
