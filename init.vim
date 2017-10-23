set nocompatible
syntax on
filetype indent plugin on

" Load vim plugins
" Managed by vim-plug
call plug#begin('~/.vim/vendor')

Plug 'tpope/vim-sensible'
Plug 'rstacruz/vim-opinion'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'ap/vim-buftabline'

if version >= 704
  Plug 'SirVer/ultisnips'
endif

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'rstacruz/vim-closer'
Plug 'tpope/vim-surround'
Plug 'w0rp/ale'
Plug 'godlygeek/tabular'

" Themes
Plug 'altercation/vim-colors-solarized'
call plug#end()

