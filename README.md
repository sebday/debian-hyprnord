# Hyprland on Debian Sid
## JaKooLit script
Inspired by https://github.com/JaKooLit/Debian-Hyprland I wanted Hyprland on Debian using just apt and without having to build anything.

[![screenshot](https://imghost.lol/screenshots/2024-08-21-011113_hyprshot.png)](https://imghost.lol/screenshots/2024-08-21-011113_hyprshot.png)

## Install
Install a base system with no desktop environment, add `contrib` and `non-free` and dist-update to sid.

`sudo apt install hyprland hyprland-protocols hyprwayland-scanner xwayland waybar fuzzel grim slurp cliphist hyprpaper nwg-look libglib2.0-bin swaylock swayidle bibata-cursor-theme`

- Fuzzel is a nice menu with icons
- Waybar is the taskbar
- Cliphist stores the clipboard to push into fuzzel
- Grim and slurp are for taking screenshots
- Hyprshot is not a package and needs cloning https://github.com/Gustash/Hyprshot
- Hyprpaper is enough but simple - I want waypaper as well
- Nwg-look is a gtk themer
- Swaylock is the lock screen
- Swayidle for auto locking the screen

`sudo apt install foot git firefox `

### Clone the dots and start hyprland
`git clone git@github.com:sebday/debian-hyprnord.git ~/.config`

Reboot and run `hyprland`. Now you can use firefox to copy paste :) Fonts will be broken until installed in the next step.

### Oh my zsh
I can't live without auto suggestions and syntax highlighting now.
```
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" 
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting
```

Copy `assets/.zshrc` into ~/ and reboot to get the new shell.

### Standard tools
`sudo apt install eza fzf sshfs btop fastfetch pipewire alsa-utils playerctl pamixer pavucontrol imv mpv qalc cava thunar thunar-archive-plugin thunar-media-tags-plugin gvfs-backends inkscape transmission libfuse2 tty-clock`

### Desktop apps
`sudo apt install thunar thunar-archive-plugin thunar-media-tags-plugin gvfs-backends inkscape transmission`

### Fonts & Icons
Installing fonts through apt seems to miss the symbols needed for waybar and fastfetch. Extract from assets the fonts into `~/.local/share/fonts` and the icons into `~/.local/share/icons`

### Firefox
Nord theme: https://github.com/dragonejt/nord-firefox \
Copy firefox/userContent.css to the ~/.mozilla/firefox/profile/chrome directory \
In `about:config` set "toolkit.legacyUserProfileCustomizations.stylesheets" to `true` \
Install the Stylus extension \
Install the [WhatsApp Web](https://userstyles.world/style/16345/whatsapp-web-nord-theme) and Soundcloud Themes 

### Wallpapers
Custom wallpaper scripts in the hypr folder search a folder for jpg and png, then set each monitor. \
Currently sets each monitor individually so the script needs editing to your monitor(s) names. (this could extract the monitors from hyprctl monitors ?) \
A seperate widescreen script looks in a different folder and then applies images numbered 1, 2 and 3 seperately span a wallpaper across three monitors.

## Resources
Colors: [Nord](https://www.nordtheme.com/) \
Icons: [NovaOS](https://github.com/NicklasVraa/NovaOS-nord-Icons) \
Font: [CascadiaMono](https://www.nerdfonts.com/font-downloads) \
Cursor: [Bibata Modern Ice](https://packages.debian.org/sid/bibata-cursor-theme) \
Firefox: [Nord](https://github.com/dragonejt/nord-firefox) \
Whatsapp: [Nord](https://userstyles.world/style/16345/whatsapp-web-nord-theme)
