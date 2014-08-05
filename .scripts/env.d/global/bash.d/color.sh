#!/bin/bash
# Custom bash prompt via kirsle.net/wizards/ps1.html
if [[ -z $PS1 ]]; then
	INTERACTIVE=nope
else
	PS1="\[$(tput setaf 5)\][\u@\h \W]\\$ \[$(tput sgr0)\]"
	export PS1
fi

