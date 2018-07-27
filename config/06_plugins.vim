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
" ---------------------------------------------------------------------------- ]

" [ delimitMate ----------------------------------------------------------------
let g:airline_theme='oceanicnext'
let delimitMate_expand_cr=1 " Put a further <CR> after, for exampole a {<CR>
" ---------------------------------------------------------------------------- ]

" [ vim-commentary -------------------------------------------------------------
autocmd FileType sql set commentstring=--\ %s
autocmd FileType jsp set commentstring=<%--\ %s\ --%>
autocmd FileType freemarker set commentstring=<#--\ %s\ -->
" ---------------------------------------------------------------------------- ]

" [ tagbar ---------------------------------------------------------------------
nmap <F8> :TagbarToggle<CR>
" ---------------------------------------------------------------------------- ]

" [ indentLine -----------------------------------------------------------------
let g:indentLine_char="┊" " Custom character for vertical lines highlighting indentation
" ---------------------------------------------------------------------------- ]

" [ vim-json -------------------------------------------------------------------
let g:vim_json_syntax_conceal=0 " Remove double quote hide
" ---------------------------------------------------------------------------- ]

" [ vim-gutentags --------------------------------------------------------------
let g:gutentags_project_info = [{'type':'javascript'}, {'type':'scss'}]
" ---------------------------------------------------------------------------- ]

" [ Ale ------------------------------------------------------------------------
let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['eslint']
let g:ale_fixers['css'] = ['stylelint']
let g:ale_fixers['scss'] = ['stylelint']
let g:ale_fixers['markdown'] = ['prettier']
let g:ale_javascript_prettier_options = '--use-tabs' " This is
let g:ale_fix_on_save = 1
" ---------------------------------------------------------------------------- ]

" [ YouCompleteMe --------------------------------------------------------------
let g:ycm_semantic_triggers = {
    \   'css': [ 're!^', 're!^\s+', ': ' ],
    \   'scss': [ 're!^', 're!^\s+', ': ' ],
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
let g:UltiSnipsSnippetsDir="~/.config/nvim/UltiSnips/"
let g:UltiSnipsExpandTrigger="<c-j>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" ---------------------------------------------------------------------------- ]
