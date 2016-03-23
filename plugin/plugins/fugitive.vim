if globpath(&rtp, "plugin/fugitive.vim") == ""
  finish
endif

set statusline+=%{fugitive#statusline()}
"nmap <leader>gs :Gstatus<cr>
"nmap <leader>gp :Dispatch git push<cr>
