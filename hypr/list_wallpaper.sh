#!/bin/bash

WALLPAPER_DIR="$HOME/Pictures/Wallpapers"

find "$WALLPAPER_DIR" -type f \( -name "*.jpg" -o -name "*.png" \) -printf "%f\n"