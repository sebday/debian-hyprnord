#!/bin/bash

WALLPAPER_DIR="$HOME/Pictures/Widescreen"

# Read the selected filename from stdin
read -r selected_file

if [ -n "$selected_file" ]; then
    # Extract the base filename and extension
    filename=$(basename -- "$selected_file")
    base_filename="${filename%.*}"
    extension="${filename##*.}"
    
    # Remove the last digit from the base filename
    base_filename="${base_filename%?}"
    
    # Construct the full paths for the three wallpapers
    FULL_PATH_1="$WALLPAPER_DIR/${base_filename}1.$extension"
    FULL_PATH_2="$WALLPAPER_DIR/${base_filename}2.$extension"
    FULL_PATH_3="$WALLPAPER_DIR/${base_filename}3.$extension"

    # Check if all three files exist
    if [ ! -f "$FULL_PATH_1" ] || [ ! -f "$FULL_PATH_2" ] || [ ! -f "$FULL_PATH_3" ]; then
        echo "Error: One or more wallpaper files not found" >&2
        exit 1
    fi

    hyprctl hyprpaper unload all
    hyprctl hyprpaper preload "$FULL_PATH_1"
    hyprctl hyprpaper preload "$FULL_PATH_2"
    hyprctl hyprpaper preload "$FULL_PATH_3"
    hyprctl hyprpaper wallpaper "HDMI-A-2,$FULL_PATH_1"
    hyprctl hyprpaper wallpaper "DP-2,$FULL_PATH_2"
    hyprctl hyprpaper wallpaper "DP-1,$FULL_PATH_3"
    hyprctl hyprpaper wallpaper "HDMI-A-1,$FULL_PATH_1"
    echo "Wallpapers set successfully"
else
    echo "No wallpaper selected" >&2
    exit 1
fi