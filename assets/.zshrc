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
export PATH="$HOME/.local/bin:$PATH"

# Set-up icons for files/folders in terminal using eza
alias ls='eza -l --icons'
alias ll='eza -al --icons'
alias lt='eza -alr --sort=mod --tree --level=1 --icons'
