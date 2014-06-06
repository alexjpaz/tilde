#!/usr/bin/env bash
BOOKMARK_DIR=$HOME/.pazconf/bookmarks

function g() {
	BOOKMARK=$1

	pushd $(cat ${BOOKMARK_DIR}/$BOOKMARK)
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
