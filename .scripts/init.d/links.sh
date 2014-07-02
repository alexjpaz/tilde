echo "=== $0 ==="

ENV="${HOME}/.scripts/env.d/${PAZENV:-${HOSTNAME}}"

ln -sf "${ENV}/git/gitconfig" "${HOME}/.gitconfig"
ln -sf "${ENV}" "${HOME}/.scripts/env.d/current"
ln -sf "${ENV}/vim" "${HOME}/.vim/plugin/env"
