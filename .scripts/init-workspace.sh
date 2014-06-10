#
cd $HOME
git init
git remote add tilde https://github.com/alexjpaz/tilde.git
git fetch tilde
git stash
git reset --hard tilde/master

INIT_DIR="$HOME/.scripts/init.d/"
SCRIPTS=$(find ${INIT_DIR} -iname '*.sh' -perm -u=x | sort)
for script in $SCRIPTS
do
	if [ -x $script ]; then
		. $script
	fi
done

