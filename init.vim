set t_Co=256
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

" Utils
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'

" Tasks
Plug 'AndrewRadev/splitjoin.vim'

" Language specific
Plug 'pangloss/vim-javascript'
call plug#end()

