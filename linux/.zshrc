ZSH_THEME="spaceship"
plugins=(git)
export ZSH=$HOME/.oh-my-zsh
DISABLE_UPDATE_PROMPT=true
DISABLE_AUTO_UPDATE=true

SPACESHIP_PROMPT_SYMBOL="%Bλ%b"
SPACESHIP_USER_SHOW=false
SPACESHIP_TIME_12HR=true
SPACESHIP_EXEC_TIME_PREFIX=" "
# SPACESHIP_GIT_SHOW=false
# SPACESHIP_GIT_BRANCH_SHOW=false
SPACESHIP_GIT_BRANCH_PREFIX=" "
SPACESHIP_GIT_PREFIX="on"
SPACESHIP_GIT_STATUS_SHOW=false
SPACESHIP_GIT_STATUS_COLOR="grey"

source $ZSH/oh-my-zsh.sh

export TERM=xterm-256color
export EDITOR=vim
export VISUAL="emacsclient -c"
export SUDO_EDITOR="emacsclient -c"

alias desktop='cd ~/Desktop'
alias develop='cd ~/develop'
alias cpu-temp="watch -n 0 'sensors'"

# Pacman
if command -v pacman > /dev/null 2>&1; then
    alias pacman-prune="sudo pacman -Rns $(pacman -Qtdq | paste -sd ' ')"
    alias pacman-recent="expac --timefmt='%Y-%m-%d %T' '%l\t%n' | sort | tail -n 20"
fi

# Git
alias gs="git status -sb"
alias gd="git diff"
alias gl="git lg"
git-toplevel() { cd $(git toplevel); }

# Emacs
ec() {
    (emacsclient -c "$@" &> /dev/null &);
}
magit() {
    [[ -z "$1" ]] && dir="." || dir="$1"
    (emacsclient -c --eval "(magit-status \"$dir\")" &> /dev/null &)
}
org() {
    (emacsclient -c "$HOME/develop/sync/notes/$1.org" &> /dev/null &)
}

# Miscellaneous functions
scratch() {
    name="$1"
    dir="~/Documents/scratch"
    if [[ -z "$name" ]]; then
        eval "$VISUAL $dir/$(date '+%Y%m%d-%H%M%S').org"
    elif [[ $name == *"."* ]]; then
        eval "$VISUAL $dir/$name"
    else
        eval "$VISUAL $dir/${name}.org"
    fi
}
whichg() { thunar $(dirname $(which "$1")); }
ignore() { eval "$@" > /dev/null 2>&1; }

export GTAGSCONF=/usr/local/share/gtags/gtags.conf
export GTAGSLABEL=new-ctags
export LS_COLORS="tw=01;30:ow=01;34;40"

# VTE fix
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

# Workaround for tmux drawing issues
alias htop="TERM=screen /usr/bin/htop"

# Disable terminal scroll lock
stty -ixon

