"colorscheme sift 
"colorscheme desert
"colorscheme darkzen
"colorscheme darkrobot
colorscheme lucius

set guioptions-=T  "remove toolbar"

function! ToggleGUICruft()
  if &guioptions=='i'
    exec('set guioptions=imTrL')
  else
    exec('set guioptions=i')
  endif
endfunction

map <F11> <Esc>:call ToggleGUICruft()<cr>

" by default, hide gui menus
set guioptions=i
