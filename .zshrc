export ZSH=/home/J/.oh-my-zsh

# Theme
PURE_PROMPT_SYMBOL='$'
ZSH_THEME='pure'

# Plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

export PATH="$HOME/bin:$PATH"
export TERM=xterm-256color
export EDITOR=vim
export VISUAL="emacsclient -c"
export SUDO_EDITOR="emacsclient -c"

alias desktop='cd ~/Desktop'
alias develop='cd ~/Develop'

alias chrome='chromium --start-maximized'

alias sound='alsamixer'
alias duh='du -h --max-depth=1'
alias egrep="egrep --color"
alias pacman-prune='sudo pacman -Rns $(pacman -Qtdq)'

# Git aliases
alias gs="git status"
alias gd="git diff"
alias gl="git log"

function ec() {
	emacsclient -c "$@" > /dev/null
}

function whichg() {
	thunar $(dirname $(where "$1"))
}

# Disable terminal scroll lock
stty -ixon

# Fix VTE configuration issues
source /etc/profile.d/vte.sh

# Keychain
eval `keychain --eval --quiet --noask --agents ssh id_rsa`

# Start in develop directory
develop
