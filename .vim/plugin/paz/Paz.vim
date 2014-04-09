"command PazCs

set completeopt-=preview

command! -range -bang -nargs=* PazTest echo [<bang>0, <line1>, <line2>, <count>, <q-args>]


function! PazTmux(command)
	echo command
endfunction
