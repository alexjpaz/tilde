let macvim_skip_colorscheme=1
let macvim_skip_cmd_opt_movement = 1
"let macvim_hig_shift_movement = 1

set nocompatible               " be iMproved
filetype off                   " required!

set ts=4
set sw=4

call plug#begin('~/.vim/plugged')

Plug 'gmarik/Vundle.vim'

Plug 'puppetlabs/puppet-syntax-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'gcmt/taboo.vim'
Plug 'lepture/vim-velocity'
Plug 'groenewege/vim-less'
Plug 'editorconfig/editorconfig-vim'
Plug 'kien/ctrlp.vim'

" Syntastic
Plug 'scrooloose/syntastic'

" Javascript
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'einars/js-beautify'
Plug 'maksimr/vim-jsbeautify'
Plug 'chrisbra/Colorizer'

"SnipMate
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

" Go
Plug 'fatih/vim-go'

call plug#end()

filetype plugin indent on
