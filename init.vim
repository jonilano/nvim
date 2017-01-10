set nocompatible
syntax on
filetype indent plugin on

" Load vim plugins
" Managed by vim-plug
call plug#begin('~/.vim/vendor')

Plug 'tpope/vim-sensible'
Plug 'rstacruz/vim-opinion'
Plug 'ctrlpvim/ctrlp.vim'
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
Plug 'scrooloose/syntastic'

" Themes
Plug 'altercation/vim-colors-solarized'
call plug#end()

