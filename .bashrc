# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Source .bash.d
BASHDIR=~/.bash.d/
for script in $BASHDIR/*.sh
do
	if [ -x $script ]; then
		. $script
	fi
done

export PATH=$PATH:$HOME/.opt/google_appengine/

# Automcatically genereated beyond this

#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
