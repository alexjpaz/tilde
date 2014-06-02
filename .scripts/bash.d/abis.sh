#!/bin/sh

alias q="fab -c /home/apaz/.scripts/abis/.fabricrc"

alias gcd="_gcd"
alias gr='_gr'
alias ncd='cd $NGA_HOME'
alias cbf='cd $NGA_HOME'

function _gr() {
	grep -r "$@" .
}

function _gcd() {
	cd /build/cbf.git/$@
}
