# Hyprland on Debian Sid
## JaKooLit script
Inspired by https://github.com/JaKooLit/Debian-Hyprland I wanted Hyprland on Debian using just apt and without having to build anything.

[![screenshot](https://imghost.lol/screenshots/2024-08-21-011113_hyprshot.png)](https://imghost.lol/screenshots/2024-08-21-011113_hyprshot.png)

## Install
Install a base system with no desktop environment, add `contrib` and `non-free` and dist-update to sid.

`sudo apt install hyprland hyprland-protocols hyprwayland-scanner xwayland`

`sudo apt install waybar fuzzel grim slurp cliphist hyprpaper nwg-look swaylock swayidle`

- Fuzzel is a nice menu with icons
- Waybar is the taskbar
- Cliphist stores the clipboard to push into fuzzel
- Grim and slurp are for taking screenshots
- Hyprshot is not a package and needs cloning https://github.com/Gustash/Hyprshot
- Hyprpaper is enough but simple - I want waypaper as well
- Nwg-look is a gtk themer
- Swaylock is the lock screen
- Swayidle for auto locking the screen

### Standard tools
`sudo apt install waybar fuzzel grim slurp cliphist hyprpaper nwg-look libglib2.0-bin swaylock swayidle fonts-cascadia-code fonts-font-awesome fonts-hack bibata-cursor-theme`

### Desktop apps
`sudo apt install firefox thunar thunar-archive-plugin thunar-media-tags-plugin gvfs-backends inkscape transmission libfuse2`

### Oh my zsh
```
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" 
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting
```

#### .zshrc

```
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"
#ZSH_THEME="xiong-chiamiov-plus"
#ZSH_THEME="aussiegeek"

plugins=( 
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Set-up icons for files/folders in terminal using eza
alias ls='eza -l --icons'
alias ll='eza -al --icons'
alias lt='eza -alr --sort=mod --tree --level=1 --icons'
```

### Firefox
Nord theme: https://github.com/dragonejt/nord-firefox \
Copy userContent.css to the ~/.mozilla/firefox/profile/chrome directory \
In `about:config` set "toolkit.legacyUserProfileCustomizations.stylesheets" to `true` \
Install the Stylus extension \
Install the WhatsApp Web and Soundcloud Themes 

## Themes
Colors: Nord \
Icons: NovaOS \
Font: CaskaydiaCove Nerd \
Cursor: Bibata Modern Ice