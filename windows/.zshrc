# Path to your oh-my-zsh installation.
export ZSH=/home/J/.oh-my-zsh

ZSH_THEME="spaceship"

SPACESHIP_PROMPT_SYMBOL="%B$%b"
SPACESHIP_USER_SHOW=false
SPACESHIP_TIME_12HR=true
SPACESHIP_EXEC_TIME_PREFIX=" "
SPACESHIP_GIT_PREFIX="on"
SPACESHIP_GIT_STATUS_COLOR="grey"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export TERM=xterm-256color
export EDITOR="vim"
export VISUAL="emacsclient -c"
export SUDO_EDITOR="emacsclient -c"

alias mintty="/cygdrive/d/Cygwin64/bin/mintty.exe -i '$HOME/Pictures/Icons/Terminal.ico'"

alias desktop='cd /cygdrive/c/Users/J/Desktop'
alias develop='cd /cygdrive/d/Develop'

alias gs="git status -sb"
alias gd="git diff"
alias gl="git lg"

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
screenshot() { import -window root "$HOME/Pictures/screenshots/$(date '+%Y%m%d-%H%M%S').png"; }
whichg() {
	if [ -z "$@" ]; then
	    return
	else
	    case "$OSTYPE" in
		cygwin) ;&
		msys)
		    explorer $(cygpath $(dirname "$(where "$@")") -w)
		    ;;
	    esac
	fi
}
ignore() { eval "$@" > /dev/null 2>&1; }

# GNU Global
export GTAGSCONF=/usr/local/share/gtags/gtags.conf
export GTAGSLABEL=new-ctags

# Set colors for ls
export LS_COLORS="tw=01;30:ow=01;34;40"

# Workaround for tmux drawing issues
alias htop="TERM=screen /usr/bin/htop"

# Disable terminal scroll lock
stty -ixon

# Start in develop directory
develop
