scriptencoding utf-8
"
" Use OS Clipboard
"
set clipboard=unnamedplus

" Remove the one-second escape key delay
" http://stackoverflow.com/questions/12312178/tmux-and-vim-escape-key-being-seen-as-and-having-long-delay
"

set timeout timeoutlen=1000 ttimeoutlen=100


"
" Save typos
" http://blog.sanctum.geek.nz/vim-command-typos/
"

if has("user_commands")
  command! -bang -nargs=? -complete=file E e<bang> <args>
  command! -bang -nargs=? -complete=file W w<bang> <args>
  command! -bang -nargs=? -complete=file Wq wq<bang> <args>
  command! -bang -nargs=? -complete=file WQ wq<bang> <args>
  command! -bang Wa wa<bang>
  command! -bang WA wa<bang>
  command! -bang Q q<bang>
  command! -bang QA qa<bang>
  command! -bang Qa qa<bang>
endif

"
" Opinion extensions
"

set tabstop=2
set foldnestmax=3        " don't overfold
set fillchars=vert:\|,fold:·     " improve appearance of folds
set list
set listchars=tab:·\ ,trail:—,nbsp:␣,extends:>,precedes:<
set showbreak=↪
