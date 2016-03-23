"
" Common
"
let g:airline_theme='base16'

if !has("gui_running")
  set t_Co=256
  set background=dark
  colorscheme iceberg 
endif

if has("gui_running")
  colorscheme iceberg
  set cursorline
  set guifont=Meslo\ LG\ M\ for\ Powerline
endif

