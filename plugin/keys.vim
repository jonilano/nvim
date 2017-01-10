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

" Code folding
nnoremap <Space> za

nnoremap <Leader>l :nohlsearch<cr>

" :W sudo saves the file 
" (useful for handling the permission-denied error)
command! W w !sudo tee % > /dev/null
