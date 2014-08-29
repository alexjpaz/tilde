#!/usr/bin/env bash
#SCRIPT_DIR="$HOME/.scripts/env.d/global/q.scripts"
SCRIPT_DIR="$HOME/.scripts/env.d/current/q.scripts"

function q() {
	SCRIPT=$1
	shift 1

	if [ -z $SCRIPT ]; then
		__q find
		return;
	fi

	$SCRIPT_DIR/$SCRIPT $@
}

__q()
{
	local opt=$1
	case $opt in
		find)      
			find $SCRIPT_DIR -type f -perm -u=x | sed "s@.*q\.scripts/@@"
			;;
		*)
			cur=${COMP_WORDS[COMP_CWORD]}
			COMPREPLY=()
			use=$(__q find);
			COMPREPLY=( $( compgen -W "$use" -- $cur ) )
			;;
	esac
}

complete -o default -o nospace -F __q  q

# vim:syntax=sh
