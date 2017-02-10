#!/bin/bash

# Key bindings
xmodmap ~/.Xmodmap
xbindkeys

# Startup programs
compton &
volumeicon &
pushtray connect &

# User services
services=(thunderbird)
for service in "${services[@]}"; do
  systemctl --user start "$service"
done
