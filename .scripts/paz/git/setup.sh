GITCFG='git config --global'
GITCFG_ALIAS="$GITCFG alias"

echo "[ Setting up gitconfig ]"

$GITCFG_ALIAS.color.ui true
$GITCFG_ALIAS.br branch --all
$GITCFG_ALIAS.fixb checkout -B _fix
$GITCFG_ALIAS.co checkout
$GITCFG_ALIAS.c commit -c HEAD
$GITCFG_ALIAS.cc '!$HOME/.scripts/git/commit-progress-use-current-branch'
$GITCFG_ALIAS.st status
$GITCFG_ALIAS.sts status -s .
$GITCFG_ALIAS.stu status -unos
$GITCFG_ALIAS.d diff HEAD
$GITCFG_ALIAS.ds diff --name-status
$GITCFG_ALIAS.dd diff --cached HEAD
$GITCFG_ALIAS.dc diff --cached
$GITCFG_ALIAS.tree log --decorate --graph --abbrev-commit --oneline
$GITCFG_ALIAS.forest log --decorate --graph --abbrev-commit --oneline --all
$GITCFG_ALIAS.f '!git forest'
$GITCFG_ALIAS.ap add -p
$GITCFG_ALIAS.au add -u
