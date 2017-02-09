#!/bin/bash

# Key bindings
xmodmap ~/.Xmodmap
xbindkeys

# Startup programs
compton &
volumeicon &

# User services
services=(thunderbird pushtray)
for service in "${services[@]}"; do
  systemctl --user start "$service"
done
