set nocompatible               " be iMproved
filetype off                   " required!

set ts=4
set sw=4

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'puppetlabs/puppet-syntax-vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'flazz/vim-colorschemes'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'pangloss/vim-javascript'
Bundle 'gcmt/taboo.vim'
Bundle "lepture/vim-velocity"

"SnipMate
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"
" run :PluginInstall

filetype plugin indent on
