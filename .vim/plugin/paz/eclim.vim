nmap <Leader>es <ESC>:JavaSearchContext<Return>
nmap <Leader>et <ESC>:JUnit<Return>

function! TabMessage(cmd)
  redir => message
  silent execute a:cmd
  redir END
  tabnew
  silent put=message
  set nomodified
endfunction
command! -nargs=+ -complete=command TabMessage call TabMessage(<q-args>)
