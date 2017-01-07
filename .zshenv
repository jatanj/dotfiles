export PATH="$HOME/bin:$PATH"
export FONTCONFIG_PATH="/etc/fonts/"

if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
    export SSH_AUTH_SOCK
fi
