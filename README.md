# Hyprland on Debian Sid
## JaKooLit script
Inspired by https://github.com/JaKooLit/Debian-Hyprland I wanted Hyprland on Debian using just apt and without having to build anything.

[![screenshot](https://imghost.lol/2024-08-16-154910_hyprshot.png)](https://imghost.lol/2024-08-16-154910_hyprshot.png)

## Install
Install a base system with no desktop environment, add `contrib` and `non-free` and dist-update to sid.

`sudo apt install hyprland hyprland-protocols hyprwayland-scanner xwayland`

`sudo apt install waybar fuzzel grim slurp cliphist hyprpaper nwg-look swaylock swayidle`

- Fuzzel is a nice menu with icons.
- Waybar is the taskbar
- Cliphist stores the clipboard to push into fuzzel
- Grim and slurp are for taking screenshots
- Hyprshot is not a package and needs cloning
- Hyprpaper is enough but simple - I want waypaper as well
- Nwg-look is a gtk themer
- Swaylock is the lock screen, can't be bother to build hyprlock yet
- Swayidle for auto locking the screen