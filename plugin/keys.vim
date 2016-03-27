"
" Map that <ESC> key
"

inoremap jk <ESC>
onoremap jk <ESC>
vnoremap jk <ESC>

"
" Buffer navigation
"

nmap <C-H> :bprev<CR>
nmap <C-L> :bnext<CR>
imap <C-H> <ESC>:bprev<CR>
imap <C-L> <ESC>:bnext<CR>

"
" Code folding
"

nnoremap <Space> za
