echo "=== $0 ==="

VUNDLE_DIR=$HOME/.vim/bundle/Vundle.vim

if [ ! -e $VUNDLE_DIR ]; then
	git clone https://github.com/gmarik/Vundle.vim.git ${VUNDLE_DIR}
fi

cd ${VUNDLE_DIR}
git stash
git pull

vim +PluginInstall +qall
