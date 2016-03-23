if globpath(&rtp, "plugin/fugitive.vim") == ""
  finish
endif

set statusline+=%{fugitive#statusline()}
