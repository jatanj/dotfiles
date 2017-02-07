export ZSH=/home/J/.oh-my-zsh
DISABLE_AUTO_UPDATE="true"

# Theme
PURE_PROMPT_SYMBOL='$'
ZSH_THEME='pure'

# Plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

export TERM="xterm-256color"
export EDITOR="vim"
export VISUAL="emacsclient -c"
export SUDO_EDITOR="emacsclient -c"

alias desktop='cd ~/Desktop'
alias develop='cd ~/develop'
alias cpu-temp="watch -n 0 'sensors'"

# Pacman
alias pacman-prune="sudo pacman -Rns $(pacman -Qtdq)"
alias pacman-recent="expac --timefmt='%Y-%m-%d %T' '%l\t%n' | sort | tail -n 20"

# Git
alias gs="git status -s"
alias gd="git diff"
alias gl="git lg"

function ec() {
	emacsclient -c "$@" > /dev/null
}

function whichg() {
	thunar $(dirname $(which "$1"))
}

# Disable terminal scroll lock
stty -ixon

# Start in develop directory
develop
