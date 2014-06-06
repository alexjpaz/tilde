function source_dem_files() {
	BASHDIR=$1
	SCRIPTS=$(find $BASHDIR -iname '*.sh' -perm -u=x | sort)
	for script in $SCRIPTS
	do
		if [ -x $script ]; then
			. $script
		fi
	done
}

source_dem_files "$HOME/.bash.d/"
source_dem_files "$HOME/.scripts/env.d/${PAZENV}/bash.d/"
