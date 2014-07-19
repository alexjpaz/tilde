#!/usr/bin/env bash
SCRIPT_DIR="$HOME/.scripts/env.d/global/q.scripts"

if [ -d $HOME/.scripts/env.d/${PAZENV:-${HOSTNAME}}/q.scripts ]; then
	SCRIPT_DIR+=" $HOME/.scripts/env.d/${PAZENV:-${HOSTNAME}}/q.scripts"
fi

function q() {
	SCRIPT=$1
	shift 1

	if [ -z $SCRIPT ]; then
		find $SCRIPT_DIR -type f -perm -u=x | sed "s@$SCRIPT_DIR/@@"
		return;
	fi

	$SCRIPT_DIR/$SCRIPT $@
}

__q()
{
	cur=${COMP_WORDS[COMP_CWORD]}
	COMPREPLY=()
	use=$(find $SCRIPT_DIR -type f -perm -u=x | sed "s@$SCRIPT_DIR/@@");
	COMPREPLY=( $( compgen -W "$use" -- $cur ) )
}
complete -o default -o nospace -F __q  q

# vim:syntax=sh
