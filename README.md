# Hyprland on Debian Sid
## JaKooLit script
Inspired by https://github.com/JaKooLit/Debian-Hyprland I wanted Hyprland on Debian using just apt and without having to build anything.

[![screenshot](https://imghost.lol/screenshots/2024-08-21-011113_hyprshot.png)](https://imghost.lol/screenshots/2024-08-21-011113_hyprshot.png)

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

### Standard tools
`sudo apt install zsh eza git foot foot-themes neovim fzf sshfs htop nvtop duf neofetch pipewire alsa-utils playerctl pamixer pavucontrol`

### Terminal apps
`sudo apt install nnn imv mpv mpv-mpris qalc cava`

### Desktop apps
`sudo apt install firefox thunar thunar-archive-plugin thunar-media-tags-plugin gvfs-backends inkscape transmission libfuse2`

### Firefox
Nord theme: https://github.com/dragonejt/nord-firefox

Copy userContent.css to the ~/.mozilla/firefox/profile/chrome directory \
Install the Stylus extension and WhatsApp Web Nord Theme \
Copy stylus_soundcloud_nord.css into Stylus as a new theme

## Themes
Colors: Nord \
Icons: Zafiro Nord Black Blue \
Font: CaskaydiaCove Nerd \
Cursor: Bibata Modern Ice