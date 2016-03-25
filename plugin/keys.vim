"
" Map that <ESC> key
"

imap jk <ESC>
vmap jk <ESC> 
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
