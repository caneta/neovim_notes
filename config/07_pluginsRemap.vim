" [ fzf.vim --------------------------------------------------------------------
nmap <leader>f :GFiles <CR>| " Search git versioned files in the current dir
nmap <leader>F :Files <CR>| " Search files in the current dir
nmap <leader>g :Ag <CR>| " Search strings ag
nmap <Leader>B :Buffers<CR>| " Search in open buffers
nmap <Leader>h :History<CR>| " Search in buffer history
nmap <Leader>t :BTags<CR>| " Search for tags in the current buffer, no tags file needed
nmap <Leader>T :Tags<CR>| " Search for tags in a project (vim-gutentags needed)
" ---------------------------------------------------------------------------- ]

" [ Ale ------------------------------------------------------------------------
nmap <silent> [W <Plug>(ale_first)
nmap <silent> [w <Plug>(ale_previous)
nmap <silent> ]w <Plug>(ale_next)
nmap <silent> ]W <Plug>(ale_last)
" ---------------------------------------------------------------------------- ]
