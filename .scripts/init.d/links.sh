echo "=== $0 ==="
 
ENV="${HOME}/.scripts/env.d/${PAZENV:-${HOSTNAME}}"
GLOBALENV="${HOME}/.scripts/env.d/global"

echo "Setting up current link"
ln -snfv "${ENV}" "${HOME}/.scripts/env.d/current"

if [ -f "${ENV}/git/gitconfig" ]; then
	ln -snfv "${ENV}/git/gitconfig" "${HOME}/.gitconfig"
else
	ln -snfv "${GLOBALENV}/git/gitconfig" "${HOME}/.gitconfig"
fi

if [ -f "${ENV}/vim" ]; then
	ln -snfv "${ENV}/vim" "${HOME}/.vim/plugin/env"
else
	ln -snfv "${GLOBALENV}/vim" "${HOME}/.vim/plugin/env"
fi


