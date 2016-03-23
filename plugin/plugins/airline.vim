if globpath(&rtp, "plugin/airline.vim") == ""
  finish
endif

let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1

