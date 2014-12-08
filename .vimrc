
let macvim_skip_colorscheme=1
let macvim_skip_cmd_opt_movement = 1
"let macvim_hig_shift_movement = 1

set nocompatible               " be iMproved
filetype off                   " required!

set ts=4
set sw=4

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'

Plugin 'puppetlabs/puppet-syntax-vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'pangloss/vim-javascript'
Plugin 'gcmt/taboo.vim'
Plugin 'lepture/vim-velocity'
Plugin 'groenewege/vim-less'
Plugin 'wookiehangover/jshint.vim'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'
Plugin 'editorconfig/editorconfig-vim'

"SnipMate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

call vundle#end()
" run :PluginInstall

filetype plugin indent on
