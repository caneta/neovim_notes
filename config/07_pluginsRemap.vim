" [ fzf.vim --------------------------------------------------------------------
nmap <leader>f :GFiles <CR>| " Search git versioned files in the current dir
nmap <leader>F :Files <CR>| " Search files in the current dir
nmap <leader>g :Ag <CR>| " Search strings ag
nmap <Leader>b :Buffers<CR>| " Search in open buffers
nmap <Leader>h :History<CR>| " Search in buffer history
nmap <Leader>t :BTags<CR>| " Search for tags in the current buffer, no tags file needed
nmap <Leader>T :Tags<CR>| " Search for tags in a project (vim-gutentags needed)
" ---------------------------------------------------------------------------- ]

" [ neomake --------------------------------------------------------------------
nmap <Leader><Space>o :lopen<CR>  " open location window
nmap <Leader><Space>c :lclose<CR> " close location window
nmap <Leader><Space>, :ll<CR>     " go to current error/warning
nmap <Leader><Space>n :lnext<CR>  " next error/warning
nmap <Leader><Space>p :lprev<CR>  " previous error/warning
" ---------------------------------------------------------------------------- ]
