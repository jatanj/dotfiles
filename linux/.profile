# User environment variables
export PATH="$HOME/bin:$HOME/.cargo/bin:$HOME/.gem/ruby/2.4.0/bin:$PATH"
export FONTCONFIG_PATH="/etc/fonts/"
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk"
export GRADLE_HOME="/usr/share/java/gradle/ "

# Suppress JAVA_OPTIONS messages
_SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS"
unset _JAVA_OPTIONS
alias java='java "$_SILENT_JAVA_OPTIONS"'

eval $(gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

# Key bindings
xmodmap $HOME/.Xmodmap
if ! pidof -x xbindkeys >> /dev/null; then
  xbindkeys
fi

