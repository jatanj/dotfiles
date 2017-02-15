#!/bin/bash

# Key bindings
xmodmap ~/.Xmodmap
xbindkeys

# Startup programs
compton &
volumeicon &
tmux new -d -s pushtray 'pushtray connect --log=info 2> /dev/null' 

# User services
services=(thunderbird)
for service in "${services[@]}"; do
  systemctl --user start "$service"
done
