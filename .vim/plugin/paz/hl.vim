hi link paz paz1
hi paz1 guibg=#ff00ff guifg=#ffffff ctermfg=Magenta term=bold
hi paz2 guibg=#0000ff  guifg=#aafaff ctermfg=Blue term=bold
hi paz3 guibg=#00ff00  guifg=#115511 ctermfg=Blue term=bold

function! PazHighlight(group, search)
	execute "" a:group."match paz".a:group a:search
endfunction

command! -nargs=* Pazhl call PazHighlight(<f-args>)
