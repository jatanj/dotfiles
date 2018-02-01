# User environment variables
export PATH="$HOME/bin:$HOME/.cargo/bin:$HOME/.gem/ruby/2.4.0/bin:$PATH"
export FONTCONFIG_PATH="/etc/fonts/"
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk"
export GRADLE_HOME="/usr/share/java/gradle/ "

# Suppress JAVA_OPTIONS messages
_SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS"
unset _JAVA_OPTIONS
alias java='java "$_SILENT_JAVA_OPTIONS"'

if command -v gnome-keyring-daemon > /dev/null 2>&1; then
  eval $(gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
fi
export SSH_AUTH_SOCK

# Key bindings
if command -v xmodmap > /dev/null 2>&1; then
  xmodmap $HOME/.Xmodmap
fi
if command -v xbindkeys > /dev/null 2>&1 && \
  ! pgrep -x xbindkeys > /dev/null 2>&1; then
  xbindkeys
fi

