# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Source .bash.d
export PAZENV="$HOSTNAME"
source $HOME/.scripts/init.d/bashrc.sh

export PATH=$PATH:$HOME/.opt/google_appengine/

# Automcatically genereated beyond this

#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
