"
" Custom key-bindings 
"

" inoremap <esc> <nop>
inoremap jk <ESC>
onoremap jk <ESC>

"
" Moving around
"

nnoremap H ^
nnoremap L $

"
" Buffer navigation
"

nmap <C-h> :bprev<CR>
nmap <C-l> :bnext<CR>
imap <C-h> <ESC>:bprev<CR>
imap <C-l> <ESC>:bnext<CR>


"
" Pane navigation
"

" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-h> <C-w>h
" nnoremap <C-l> <C-w>l

"
" Code folding
"

nnoremap <Space> za

