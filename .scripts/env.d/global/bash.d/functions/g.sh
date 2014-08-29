#!/usr/bin/env bash
BOOKMARK_DIR=$HOME/.pazconf/bookmarks

function g() {
	local a

	local OPTIND # ! important
	while getopts "a:" opt; do
		case "${opt}" in
			a)
				local a=${OPTARG}
				;;
		esac
	done

	shift $((OPTIND-1))

	BOOKMARK=$1

	if [ -z ${a} ]; then
		if [ -z $BOOKMARK ]; then
			find $BOOKMARK_DIR -type f -perm -u=r | sed "s@$BOOKMARK_DIR/@@"
			return;
		fi

		if [ -f ${BOOKMARK_DIR}/$BOOKMARK ]; then
			pushd $(cat ${BOOKMARK_DIR}/$BOOKMARK)
		else
			echo "Bookmark does not exist!"
		fi
	else
		mkdir -p ${BOOKMARK_DIR}/$(dirname ${a})
		echo $PWD > ${BOOKMARK_DIR}/${a}
	fi
}

__g()
{
  cur=${COMP_WORDS[COMP_CWORD]}
  COMPREPLY=()
  use=$(find $BOOKMARK_DIR -type f -perm -u=r | sed "s@$BOOKMARK_DIR/@@");
  COMPREPLY=( $( compgen -W "$use" -- $cur ) )
}

complete -o default -o nospace -F __g  g

# vim:syntax=sh
