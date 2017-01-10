set encoding=utf-8
set number
set norelativenumber
set nocursorline

" Use OS Clipboard
set clipboard=unnamedplus

" Allow ^v in the console
if !has("gui_running")
  vmap <C-c> "+y
  vmap <C-v> "+p
  imap <C-v> <ESC>"+pi
endif

" Opinion extensions
set tabstop=2
set foldnestmax=3               " don't overfold
" set fillchars=vert:\|,fold:·
set fillchars="vert: ",fold:·   " improve appearance of vertical line  & folds
set list
set listchars=tab:·\ ,trail:—,nbsp:␣,extends:>,precedes:<
set showbreak=↪

" Show a vertical line at 80 characters
if exists('+colorcolumn')
  set cc=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" statusline
" see :help statusline for more info on these options

" always show status line
set laststatus=2
set statusline=
set statusline+=%([git:%{fugitive#head()}]%) "show git branch
set statusline+=%< " where to truncate if too long
set statusline+=%F " fullpath
set statusline+=%h%m%r " flags

" syntastic statusline stuff
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set statusline+=%= " separation point between left and right items
set statusline+=\ %{&filetype}
set statusline+=\ %{&fileencoding}
set statusline+=[%{&fileformat}]
set statusline+=\ %{StatusLineFileSize()} " number of bytes or K in file
set statusline+=col:%c
set statusline+=\ %l/%L " current line / total lines
set statusline+=\ %P " percentage through file

function! StatusLineFileSize()
  let size = getfsize(expand('%%:p'))
  if (size < 1024)
    return size . 'b '
  else
    let size = size / 1024
    return size . 'k '
  endif
endfunction

