export PATH="$HOME/bin:$HOME/.cargo/bin:$HOME/.gem/ruby/2.4.0/bin:$PATH"
export FONTCONFIG_PATH="/etc/fonts/"

if command-exists gnome-keyring-daemon; then
  eval $(gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
fi
export SSH_AUTH_SOCK

xset r rate 250 50
if command-exists xmodmap; then
  xmodmap $HOME/.Xmodmap > /dev/null 2>&1 
fi
if command-exists xbindkeys && \
  ! pgrep -x xbindkeys > /dev/null 2>&1; then 
  xbindkeys
fi

nvidia-settings -a "[gpu:0]/GPUPowerMizerMode=1" > /dev/null 2>&1

