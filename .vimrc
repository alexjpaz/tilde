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

filetype plugin indent on
