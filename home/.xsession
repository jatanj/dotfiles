#!/bin/bash
export PATH="$HOME/bin:$PATH"
export FONTCONFIG_PATH="/etc/fonts/"

if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
    export SSH_AUTH_SOCK
fi

_SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS"
unset _JAVA_OPTIONS
alias java='java "$_SILENT_JAVA_OPTIONS"'

# Key bindings
xmodmap $HOME/.Xmodmap
xbindkeys

# Startup programs
compton &
volumeicon &
tmux new -d -s pushtray "pushtray connect --log=info 2> /dev/null"
emacs --daemon
thunderbird &

