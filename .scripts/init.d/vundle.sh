VUNDLE_DIR=$HOME/.vim/bundle/Vundle.vim
git clone https://github.com/gmarik/Vundle.vim.git ${VUNDLE_DIR}
cd ${VUNDLE_DIR}
git stash
git pull

vim +PluginInstall +qall
