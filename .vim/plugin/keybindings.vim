nmap <A-PageUp> :tabnext<Return>
nmap <A-PageDown> :tabprev<Return>
noremap <A-1> 1gt<Return>
noremap <A-2> 2gt<Return>
noremap <A-3> 3gt<Return>
noremap <A-4> 4gt<Return>
noremap <A-5> 5gt<Return>

" don't do this stupid
"nmap <C-w> :tabclose<Return>

" Pase from clipboard
nmap <Leader>p "+p

noremap <C-s> <ESC>:w!<Return>

" Window moving
noremap <A-Right> <C-w>l
noremap <A-Up> <C-w>k
noremap <A-Left> <C-w>h
noremap <A-Down> <C-w>j
noremap <A-l> <C-w>l
noremap <A-k> <C-w>k
noremap <A-h> <C-w>h
noremap <A-j> <C-w>j



set autochdir
let NERDTreeChDirMode=2
nnoremap <C-k5> :NERDTreeToggle .<CR>
