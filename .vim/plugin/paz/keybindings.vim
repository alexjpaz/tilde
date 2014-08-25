nmap <A-PageUp> :tabnext<Return>
nmap <A-PageDown> :tabprev<Return>
noremap <A-1> 1gt<Return>
noremap <A-2> 2gt<Return>
noremap <A-3> 3gt<Return>
noremap <A-4> 4gt<Return>
noremap <A-5> 5gt<Return>

" don't do this stupid
"nmap <C-w> :tabclose<Return>

" Paste from OS clipboard
nmap <Leader>p "+p

" Yank to OS Clipboard
nmap <Leader>y "+y
vmap <Leader>y "+y

" Yank full path of current buffer to clipboard
nmap <Leader>$ :let @+ = expand("%:p")<CR>

" Swap line 
nmap <Leader>ss "sddk"0p"0:let @0=@s<CR>
nmap <Leader>siw "sdiw<ESC>h"0p"0:let @0=@s<CR>

" Paste from yank clipboard
vmap <Leader>q :normal @q<Return>

" Perform default macro on visually selected lines
vmap <Leader>q :normal @q<Return>
nmap <Leader>q :normal @q<Return>

noremap <C-s> <ESC>:w!<Return>
inoremap <C-s> <ESC>:w!<Return>

" Cursor moving
noremap <C-Up> 25k
noremap <C-Down> 25j

" Window moving
noremap <A-Right> <C-w>l
noremap <A-Up> <C-w>k
noremap <A-Left> <C-w>h
noremap <A-Down> <C-w>j
noremap <A-l> <C-w>l
noremap <A-k> <C-w>k
noremap <A-h> <C-w>h
noremap <A-j> <C-w>j
inoremap <A-Right> <ESC><C-w>l
inoremap <A-Up> <ESC><C-w>k
inoremap <A-Left> <ESC><C-w>h
inoremap <A-Down> <ESC><C-w>j
inoremap <A-l> <ESC><C-w>l
inoremap <A-k> <ESC><C-w>k
inoremap <A-h> <ESC><C-w>h
inoremap <A-j> <ESC><C-w>j


set autochdir
let NERDTreeChDirMode=2
nnoremap <C-k5> :NERDTreeToggle .<CR>


nnoremap <C-k7> :set rnu!<CR>
nnoremap <C-k8> :set nu!<CR>

" replace all word
nmap <Leader>r "ryiw<ESC>:%s/<C-R>r//gc<left><left><left>
