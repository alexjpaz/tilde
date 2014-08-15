#ustom bash prompt via kirsle.net/wizards/ps1.html
if [ -e $PS1 ]; then
	export PS1="\[$(tput setaf 2)\]\u@\h:\W\\$ \[$(tput bold)\]\[$(tput sgr0)\]\[$(tput sgr0)\]"
fi
