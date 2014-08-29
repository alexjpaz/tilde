#!/bin/bash 
# Custom bash prompt via kirsle.net/wizards/ps1.html 
if [[ -z $PS1 ]]; then 
	INTERACTIVE=nope 
else 
	export PS1="\[$(tput setaf 2)\]\u@\h:\W\\$ \[$(tput bold)\]\[$(tput sgr0)\]\[$(tput sgr0)\]"
fi 
