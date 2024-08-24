#!/bin/bash

WALLPAPER_DIR="$HOME/Pictures/Wallpapers"

# Read the selected filename from stdin
read -r selected_file

if [ -n "$selected_file" ]; then
    FULL_PATH="$WALLPAPER_DIR/$selected_file"
    if [ ! -f "$FULL_PATH" ]; then
        echo "Error: File not found: $FULL_PATH" >&2
        exit 1
    fi

    hyprctl hyprpaper unload all
    hyprctl hyprpaper preload "$FULL_PATH"
    hyprctl hyprpaper wallpaper "HDMI-A-2,$FULL_PATH"
    hyprctl hyprpaper wallpaper "DP-2,$FULL_PATH"
    hyprctl hyprpaper wallpaper "DP-1,$FULL_PATH"
    hyprctl hyprpaper wallpaper "HDMI-A-1,$FULL_PATH"
    echo "Wallpaper set to: $FULL_PATH"
else
    echo "No wallpaper selected" >&2
    exit 1
fi