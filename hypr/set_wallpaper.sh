#!/bin/bash

# Read the wallpaper path from stdin
read -r wallpaper

if [ -z "$wallpaper" ]; then
    echo "Error: No wallpaper path provided" >&2
    exit 1
fi

if [ ! -f "$wallpaper" ]; then
    echo "Error: File not found: $wallpaper" >&2
    exit 1
fi

# Set regular wallpaper
hyprctl hyprpaper unload all
hyprctl hyprpaper preload "$wallpaper"
hyprctl hyprpaper wallpaper "eDP-1,$wallpaper"
echo "Regular wallpaper set successfully"