"
" Custom key-bindings
"

let mapleader=","
let g:mapleader=","

inoremap jk <Esc>
onoremap jk <Esc>

" Move to start and end of line
nnoremap H ^
vnoremap H ^
nnoremap L $
vnoremap L $

" Buffer navigation
nnoremap <C-h> :bprev<CR>
inoremap <C-h> <Esc>:bprev<CR>
nnoremap <C-l> :bnext<CR>
inoremap <C-l> <Esc>:bnext<CR>

" Window navigation
noremap <Leader>h <C-w>h
noremap <Leader>j <C-w>j
noremap <Leader>k <C-w>k
noremap <Leader>l <C-w>l

noremap <Leader>H <C-w>H
noremap <Leader>J <C-w>J
noremap <Leader>K <C-w>K
noremap <Leader>L <C-w>L

" Code folding
nnoremap <Space> za

nnoremap <Leader>c :nohlsearch<cr>

" :W sudo saves the file
" (useful for handling the permission-denied error)
command! W w !sudo tee % > /dev/null
