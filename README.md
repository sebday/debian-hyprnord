# Hyprland on Debian Sid
## Install
Install a base system with no Desktop Environment, add `contrib` and `non-free` and dist-update to sid.

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