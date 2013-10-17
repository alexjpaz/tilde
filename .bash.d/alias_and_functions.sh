# User specific aliases and functions
alias ncd='cd $NGA_HOME'
alias cbf='cd $NGA_HOME'
alias q="fab -c /home/apaz/.scripts/q/.fabricrc"
alias gr='_gr'
alias gcd="_gcd"
alias cpd="cp -t $HOME/Desktop/"

function _svngrep() {
	grep --exclude-dir=".svn" -r "$@" .
}

function _gr() {
	grep -r "$@" .
}

function _gcd() {
	cd /build/cbf.git/$@
}

function ___script() {
	. ~/.scripts/$1/$2 $3 $4 $5 $6 $7 $8 $9
}

function _hlgrep() {
	grep --color -E "${1}|$"
}

#  apaz 
function apaz-prompt-mini() {
	PS1="\[$(tput setaf 5)\]\\$ \[$(tput sgr0)\]"
}
