#!/bin/bash
hyprctl hyprpaper unload all
hyprctl hyprpaper preload "~/Pictures/Wallpapers/radeblunner1.jpg"
hyprctl hyprpaper preload "~/Pictures/Wallpapers/radeblunner2.jpg"
hyprctl hyprpaper preload "~/Pictures/Wallpapers/radeblunner3.jpg"
hyprctl hyprpaper wallpaper "HDMI-A-2,~/Pictures/Wallpapers/radeblunner1.jpg"
hyprctl hyprpaper wallpaper "DP-2,    ~/Pictures/Wallpapers/radeblunner2.jpg"
hyprctl hyprpaper wallpaper "DP-1,    ~/Pictures/Wallpapers/radeblunner3.jpg"
hyprctl hyprpaper wallpaper "HDMI-A-1,~/Pictures/Wallpapers/radeblunner1.jpg"
