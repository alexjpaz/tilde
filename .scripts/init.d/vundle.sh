VUNDLE_DIR=$HOME/.vim/bundle/vundle
git clone https://github.com/gmarik/vundle.git ${VUNDLE_DIR}
cd ${VUNDLE_DIR}
git pull

vim +PluginInstall +qall
