#!/bin/bash

eval $(gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

# Key bindings
xmodmap $HOME/.Xmodmap
xbindkeys

# Startup tmux sessions
tmux new -d -s pushtray "pushtray connect --log=info 2> /dev/null"

