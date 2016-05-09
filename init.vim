set nocompatible
let g:mapleader=","
syntax on
filetype plugin indent on

call plug#begin('~/.vim/vendor')
Plug 'tpope/vim-sensible'
Plug 'rstacruz/vim-opinion'

" Themes
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Tools
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'

" Helpers
if version >= 704
  Plug 'SirVer/ultisnips'
endif

Plug 'AndrewRadev/splitjoin.vim'
Plug 'rstacruz/vim-closer'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'

Plug 'benekastah/neomake'

" Language specific
Plug 'dag/vim-fish'
Plug 'mitsuhiko/vim-python-combined'
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
call plug#end()
