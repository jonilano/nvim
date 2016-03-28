"
" Common
"

" http://askubuntu.com/questions/512525/how-to-enable-24bit-true-color-support-in-gnome-terminal
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let g:airline_theme='base16'
"
" Console
"

if !has("gui_running")
  set t_Co=256
  colorscheme gotham
  set background=dark
  set cursorline
endif

"
" GUI
"

if has("gui_running")
  " colorscheme onedark
  colorscheme gotham
  set cursorline
  set guifont=Meslo\ LG\ M\ for\ Powerline
  set lines=31 columns=130
endif
