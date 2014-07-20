ENV="${HOME}/.scripts/env.d/${PAZENV:-${HOSTNAME}}"
GLOBALENV="${HOME}/.scripts/env.d/global"

function paz_init_makeGlobalEnvLink() {
	echo "Setting up current link"
	ln -snfv "${ENV}" "${HOME}/.scripts/env.d/current"
}

function paz_init_makeLink() {
	SOURCE=${ENV}${1}
	TARGET=${2}

	if [ ! -e "${SOURCE}" ]; then
		SOURCE=${GLOBALENV}${1}
	fi

	ln -snfv $SOURCE $TARGET
}

paz_init_makeGlobalEnvLink
paz_init_makeLink "/git/gitconfig" "${HOME}/.gitconfig"
paz_init_makeLink "/vim" "${HOME}/.vim/plugin/env"


