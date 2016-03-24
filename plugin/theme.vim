"
" Common
"
let g:airline_theme='base16'

"
" Console
"

if !has("gui_running")
  set t_Co=256
  set background=dark
  colorscheme iceberg 
  set cursorline
endif

"
" GUI
"

if has("gui_running")
  colorscheme gotham
  set cursorline
  set guifont=Meslo\ LG\ M\ for\ Powerline
endif

