ZSH_THEME=""
DISABLE_AUTO_UPDATE=true
plugins=(git sbt gradle)

export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

autoload -U promptinit
promptinit
PURE_PROMPT_SYMBOL="%Bλ%b"
prompt pure

# if [[ $(uname) == "Linux" ]] && pacman -Q zsh-syntax-highlighting > /dev/null 2>&1; then
#   source "/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
# fi

export TERM=xterm-256color
export EDITOR=vim
export VISUAL="emacsclient -c"
export SUDO_EDITOR="emacsclient -c"

alias desktop='cd ~/Desktop'
alias develop='cd ~/develop'
alias cpu-temp="watch -n 0 'sensors'"

# Pacman
alias pacman-prune="sudo pacman -Rns $(pacman -Qtdq | paste -sd ' ')"
alias pacman-recent="expac --timefmt='%Y-%m-%d %T' '%l\t%n' | sort | tail -n 20"

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
screenshot() { import -window root "$HOME/Pictures/screenshots/$(date '+%Y%m%d-%H%M%S').png"; }
whichg() { thunar $(dirname $(which "$1")); }
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
