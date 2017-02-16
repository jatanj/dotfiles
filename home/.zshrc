export ZSH=/home/J/.oh-my-zsh
DISABLE_AUTO_UPDATE=true

# Theme
PURE_PROMPT_SYMBOL=$
ZSH_THEME=pure

# Plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

export TERM=xterm-256color
export EDITOR=vim
export VISUAL="emacsclient -c"
export SUDO_EDITOR="emacsclient -c"

alias desktop='cd ~/Desktop'
alias develop='cd ~/develop'
alias cpu-temp="watch -n 0 'sensors'"

function ec() { emacsclient -c "$@" > /dev/null; }
function whichg() { thunar $(dirname $(which "$1")); }

function magit() {
  [[ -z "$1" ]] && dir="." || dir="$1"
  (ec --eval "(magit-status \"$dir\")" &> /dev/null &)
}

# Pacman
alias pacman-prune="sudo pacman -Rns $(pacman -Qtdq | paste -sd ' ')"
alias pacman-recent="expac --timefmt='%Y-%m-%d %T' '%l\t%n' | sort | tail -n 20"

# Git
alias gs="git status -sb"
alias gd="git diff"
alias gl="git lg"

# GNU Global
export GTAGSCONF=/usr/local/share/gtags/gtags.conf
export GTAGSLABEL=new-ctags

# Disable terminal scroll lock
stty -ixon

