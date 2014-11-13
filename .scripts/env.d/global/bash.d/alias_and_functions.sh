# User specific aliases and functions
alias ls='ls --color=auto'
alias cpd="cp -t $HOME/Desktop/"
alias mci='mvn clean install -Dmaven.test.skip=true'
alias mcp='mvn clean package -Dmaven.test.skip=true'
alias mtc="MAVEN_OPTS=-Xmx2048m mvn tomcat:run -Dmaven.tomcat.path='/'"
alias _vim='vim -u NONE -N'
alias http='python -m SimpleHTTPServer 8000'

alias "svn-grep"='grep --exclude-dir=".svn" -r . -e'

function _svngrep() {
	grep --exclude-dir=".svn" -r "$@" .
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


