GITCFG="git config --local"
GITCFG_ALIAS="git config --local alias"

echo "[ Setting up gitconfig ]"

$GITCFG color.ui true

echo "[ Setting up gitconfig aliases]"

git config --local --replace-all alias.br "branch --all"
git config --local alias.fixb "checkout -B _fix"
#git config --local alias.co checkout
#git config --local alias.c commit -c HEAD
#git config --local alias.cc '!$HOME/.scripts/git/commit-progress-use-current-branch'
#git config --local alias.st status
#git config --local alias.sts status -s .
#git config --local alias.stu status -unos
#git config --local alias.d diff HEAD
#git config --local alias.ds diff --name-status
#git config --local alias.dd diff --cached HEAD
#git config --local alias.dc diff --cached
#git config --local alias.tree log --decorate --graph --abbrev-commit --oneline
#git config --local alias.forest log --decorate --graph --abbrev-commit --oneline --all
#git config --local alias.f '!git forest'
#git config --local alias.ap add -p
#git config --local alias.au add -u
