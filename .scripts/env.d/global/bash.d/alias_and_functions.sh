# User specific aliases and functions
alias ls='ls --color=auto'
alias cpd="cp -t $HOME/Desktop/"
alias mci='mvn clean install -Dmaven.test.skip=true'
alias mcp='mvn clean package -Dmaven.test.skip=true'
alias mtc="MAVEN_OPTS=-Xmx2048m mvn tomcat:run -Dmaven.tomcat.path='/'"
alias _vim='vim -u NONE -N'
alias http='python -m SimpleHTTPServer 8000'
alias http-debug='.scripts/env.d/common/scripts/reflect.py'

alias "svn-grep"='grep --exclude-dir=".svn" -r . -e'

alias "docker-remove-untagged"='docker rmi $(docker images | grep "^<none>" | awk "{print $3}")'

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

function apaz-make-tasks-files() {
  echo "#!/bin/bash" >> tasks
  echo "help() {" >> tasks
  echo "echo hello" >> tasks
  echo "}" >> tasks
  echo " " >> tasks
  echo '$@' >> tasks

  chmod 755 tasks
}
