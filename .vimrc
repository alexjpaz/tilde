set nocompatible               " be iMproved
filetype off                   " required!

set ts=4
set sw=4

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'

Plugin 'puppetlabs/puppet-syntax-vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'pangloss/vim-javascript'
Plugin 'gcmt/taboo.vim'
Plugin "lepture/vim-velocity"

"SnipMate
Plugin "MarcWeber/vim-addon-mw-utils"
Plugin "tomtom/tlib_vim"
Plugin "garbas/vim-snipmate"
Plugin "honza/vim-snippets"

call vundle#end()
" run :PluginInstall

filetype plugin indent on
