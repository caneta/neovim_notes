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
let g:airline_theme='oceanicnext'
let g:airline_powerline_fonts=1 " Use powerline fonts, installed with nerd fonts
let g:airline#extensions#tabline#enabled=1 " Set enhanced tabline
let g:airline#extensions#tabline#fnamemod=':t' " Filename format: tail of the filename
let g:airline#extensions#tabline#buffer_idx_mode = 1 " Show tab numbers
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
nmap <Leader>B :Buffers<CR>| " Search in open buffers
nmap <Leader>h :History<CR>| " Search in buffer history
nmap <Leader>t :BTags<CR>|   " Search for tags in the current buffer, no tags file needed
nmap <Leader>T :Tags<CR>|    " Search for tags in a project (vim-gutentags needed)
" ---------------------------------------------------------------------------- ]

" [ tagbar ---------------------------------------------------------------------
nmap <F8> :TagbarToggle<CR>
" ---------------------------------------------------------------------------- ]

" [ indentLine -----------------------------------------------------------------
let g:indentLine_char="┊" " Custom character for vertical lines highlighting indentation

" Disable IndentLine plugin for Markdown files because it sets conceallevel=2
autocmd FileType markdown let g:indentLine_enabled=0
" ---------------------------------------------------------------------------- ]

" [ vim-json -------------------------------------------------------------------
let g:vim_json_syntax_conceal=0 " Remove double quote hide
" ---------------------------------------------------------------------------- ]

" [ vim-gutentags --------------------------------------------------------------
let g:gutentags_project_info = [{'type':'javascript'}, {'type':'scss'}]
" ---------------------------------------------------------------------------- ]

" [ vim-gutentags_plus --------------------------------------------------------
" enable gtags module
let g:gutentags_modules = ['ctags', 'gtags_cscope']

" config project root markers.
let g:gutentags_project_root = ['.root']

" generate datebases in my cache directory, prevent gtags files polluting my project
let g:gutentags_cache_dir = expand('~/.cache/tags')

" forbid gutentags adding gtags databases
let g:gutentags_auto_add_gtags_cscope = 0
" ---------------------------------------------------------------------------- ]

" [ Ale ------------------------------------------------------------------------
let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['eslint']
let g:ale_fixers['css'] = ['stylelint']
let g:ale_fixers['scss'] = ['stylelint']
let g:ale_fixers['markdown'] = ['prettier']
let g:ale_javascript_prettier_options = '--use-tabs'
let g:ale_fix_on_save = 1
nmap <silent> [W <Plug>(ale_first)
nmap <silent> [w <Plug>(ale_previous)
nmap <silent> ]w <Plug>(ale_next)
nmap <silent> ]W <Plug>(ale_last)
" ---------------------------------------------------------------------------- ]

" [ ncm2 -----------------------------------------------------------------------
" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

" show information about identifier in autocompletion popup menu
" set completeopt+=preview

" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" ---------------------------------------------------------------------------- ]

" [ LanguageClient-neovim ------------------------------------------------------
let g:LanguageClient_serverCommands = {
  \ 'css': ['css-languageserver', '--stdio'],
  \ 'scss': ['css-languageserver', '--stdio'],
  \ 'javascript': ['javascript-typescript-stdio'],
  \ 'html': ['html-languageserver', '--stdio'],
  \ 'java': ['/usr/local/bin/jdtls']
  \ }
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
