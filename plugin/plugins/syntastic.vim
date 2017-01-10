" if syntastic isn't installed don't bother loading the ff.
if globpath(&rtp, "plugin/syntastic.vim") == ""
  finish
endif

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Syntastic styles
if has('unix')
  let g:syntastic_error_symbol='✘'
  let g:syntastic_style_error_symbol='⚑'
  let g:syntastic_warning_symbol='✘' " ⚠
  let g:syntastic_style_warning_symbol='⚑'
endif

