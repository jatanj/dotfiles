ZSH_THEME="spaceship"
plugins=(git)
export ZSH=$HOME/.oh-my-zsh
DISABLE_UPDATE_PROMPT=true
DISABLE_AUTO_UPDATE=true

SPACESHIP_CHAR_SYMBOL="%Bλ%b "
SPACESHIP_USER_SHOW=false
SPACESHIP_TIME_12HR=true
SPACESHIP_EXEC_TIME_PREFIX=" "
# SPACESHIP_GIT_SHOW=false
# SPACESHIP_GIT_BRANCH_SHOW=false
SPACESHIP_GIT_BRANCH_PREFIX=" "
SPACESHIP_GIT_PREFIX="on"
SPACESHIP_GIT_STATUS_SHOW=false
SPACESHIP_GIT_STATUS_COLOR="grey"
SPACESHIP_BATTERY_SHOW=false

source $ZSH/oh-my-zsh.sh

export EDITOR=vim
export VISUAL="emacsclient -c"
export SUDO_EDITOR=vim

alias desktop='cd ~/Desktop'
alias develop='cd ~/develop'
alias scratch='cd ~/scratch'

alias cpu-temp="watch -n 0 'sensors'"
alias gpu-temp="watch -n 0 'nvidia-smi -q -d TEMPERATURE'"
alias xm='xmodmap $HOME/.Xmodmap'

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
git-search() { git grep "$1" $(git rev-list --all) }


export GTAGSCONF=/usr/local/share/gtags/gtags.conf
export GTAGSLABEL=new-ctags
export LS_COLORS="tw=01;30:ow=01;34;40"

alias bat="bat --theme OneHalfDark"

# VTE fix
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
    source /etc/profile.d/vte.sh
fi

# Workaround for tmux drawing issues
alias htop="TERM=screen /usr/bin/htop"

# Disable terminal scroll lock
stty -ixon
