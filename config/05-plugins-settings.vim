" [ vim-startify ---------------------------------------------------------------
" Where to store/load sessions to/from
let g:startify_session_dir = '~/.config/nvim/session'

" Number of file listed
let g:startify_files_number = 5

" vim-startify look
let g:startify_list_order = [
  \'sessions',
  \'bookmarks',
  \'dir',
  \'files',
  \'commands'
\]

" vim-startify bookmarks
let g:startify_bookmarks = [
  \{'c': '~/.config/nvim/init.vim'}
\]
" ---------------------------------------------------------------------------- ]

" [ vim-airline ----------------------------------------------------------------
let g:airline_theme='nord'
let g:airline_powerline_fonts=1 " Use powerline fonts, installed with nerd fonts
let g:airline#extensions#tabline#enabled=1 " Set enhanced tabline
let g:airline#extensions#tabline#fnamemod=':t' " Filename format: tail of the filename
let g:airline#extensions#tabline#buffer_nr_show = 1 " Show buffer numbers
let g:airline_theme='oceanicnext'
" ---------------------------------------------------------------------------- ]

" [ vim-commentary -------------------------------------------------------------
autocmd FileType sql set commentstring=--\ %s
autocmd FileType jsp set commentstring=<%--\ %s\ --%>
autocmd FileType freemarker set commentstring=<#--\ %s\ -->
" ---------------------------------------------------------------------------- ]

" [ fzf.vim --------------------------------------------------------------------
nmap <leader>f :GFiles <CR>| " Search git versioned files in the current dir
nmap <leader>F :Files <CR>|  " Search files in the current dir
nmap <leader>g :Ag <CR>|     " Search strings ag
nmap <leader>B :Buffers<CR>| " Search in open buffers
nmap <leader>h :History<CR>| " Search in buffer history
" ---------------------------------------------------------------------------- ]

" [ vim-agriculture ------------------------------------------------------------
nmap <leader>/ <Plug>AgRawSearch
vmap <leader>/ <Plug>AgRawVisualSelection
nmap <leader>* <Plug>AgRawWordUnderCursor
" ---------------------------------------------------------------------------- ]

" [ indentLine -----------------------------------------------------------------
let g:indentLine_char="┊" " Custom character for vertical lines highlighting indentation

" Disable IndentLine plugin for Markdown files because it sets conceallevel=2
autocmd FileType markdown let g:indentLine_enabled=0
" ---------------------------------------------------------------------------- ]

" [ vim-json -------------------------------------------------------------------
let g:vim_json_syntax_conceal=0 " Remove double quote hide
" ---------------------------------------------------------------------------- ]

" [ LanguageClient-neovim ------------------------------------------------------
let g:LanguageClient_serverCommands = {
  \ 'css': ['css-languageserver', '--stdio'],
  \ 'scss': ['css-languageserver', '--stdio'],
  \ 'javascript': ['javascript-typescript-stdio'],
  \ 'javascript.jsx': ['javascript-typescript-stdio'],
  \ 'html': ['html-languageserver', '--stdio'],
  \ 'java': ['/usr/local/bin/jdtls']
  \ }

" Enable debug
" let g:LanguageClient_loggingFile = '/tmp/lc.log'
" let g:LanguageClient_loggingLevel = 'DEBUG'

" Disable virtual text
" let g:LanguageClient_useVirtualText = 0
" ---------------------------------------------------------------------------- ]

" [ coc.nvim -------------------------------------------------------------------
let g:coc_node_path = trim(system('which node'))
" Proxy settings to install Coc plugins
let $NO_PROXY = '*'
" Use <Tab> and <S-Tab> to navigate the completion list
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use <cr> to confirm completion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" ---------------------------------------------------------------------------- ]

" [ MatchTagAlways -------------------------------------------------------------
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'jsp' : 1,
    \ 'freemarker' : 1,
    \}
" ---------------------------------------------------------------------------- ]

" [ Ultisnips ------------------------------------------------------------------
" Trigger configuration. Do not use <tab> if you use YouCompleteMe
let g:UltiSnipsExpandTrigger="<c-j>"

let g:UltiSnipsSnippetsDir="~/.config/nvim/UltiSnips/"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" ---------------------------------------------------------------------------- ]

" [ delimitMate ----------------------------------------------------------------
let delimitMate_expand_cr=1 " Put a further <CR> after, for example a {<CR>
imap <C-L> <Plug>delimitMateS-Tab
" ---------------------------------------------------------------------------- ]

" [ vim-emoji ------------------------------------------------------------------
set completefunc=emoji#complete
" ---------------------------------------------------------------------------- ]

" [ vim-markdown-composer ------------------------------------------------------
let g:markdown_composer_open_browser=0
let g:markdown_composer_autostart=0
" ---------------------------------------------------------------------------- ]

" [ vim-polyglot ---------------------------------------------------------------
"let g:polyglot_disabled = ['csv']
" ---------------------------------------------------------------------------- ]
