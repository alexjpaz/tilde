#
cd $HOME
git init
git remote add tilde https://github.com/alexjpaz/tilde.git
git fetch tilde
git reset --hard master

#
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
