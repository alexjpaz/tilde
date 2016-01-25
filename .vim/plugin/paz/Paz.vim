"command PazCs
"
"
colorscheme iceberg

set completeopt-=preview

set bs=2

command! -range -bang -nargs=* PazTest echo [<bang>0, <line1>, <line2>, <count>, <q-args>]


function! PazTmux(command)
	echo command
endfunction

function! StrTrim(txt)
  return substitute(a:txt, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
endfunction
