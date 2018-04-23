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

" [ vim-move -------------------------------------------------------------------
let g:move_key_modifier = 'C' " Move a block with <C-C>
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

" [ deoplete ----------------------------------------------------------------
let g:deoplete#enable_at_startup=1
" let g:deoplete#omni#functions = {}
" let g:deoplete#omni#functions.javascript = [
"   \ 'tern#Complete',
"   \ 'jspc#omni'
" \]
" set completeopt=longest,menuone,preview
" set completeopt-=preview
let g:deoplete#sources = {}
" let g:deoplete#sources['javascript.jsx'] = ['file', 'ultisnips', 'ternjs']
" let g:tern#command = ['tern']
" let g:tern#arguments = ['--persistent']
" autocmd FileType javascript let g:SuperTabDefaultCompletionType = "<C-x><C-o>"
let g:UltiSnipsExpandTrigger="<C-j>"
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"| " Use tab to autocomplete
" autocmd CompleteDone * pclose! " Automatically close scratch window after selection
" call deoplete#custom#source('ultisnips', 'matchers', ['matcher_fuzzy'])
" ---------------------------------------------------------------------------- ]

" [ deoplete-ternjs ------------------------------------------------------------
let g:tern_request_timeout=1
" let g:tern_show_signature_in_pum=0  " This do disable full signature type on autocomplete
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

" [ vim-jsx -------------------------------------------------------------------
" let g:jsx_ext_required = 0
" ---------------------------------------------------------------------------- ]

" [ vim-gutentags -------------------------------------------------------------------
let g:gutentags_project_info = [{'type':'javascript'}, {'type':'scss'}]
" ---------------------------------------------------------------------------- ]

" [ Ale ------------------------------------------------------------------------
" let g:ale_javascript_eslint_options = '-c ~/liferay/progetti/cabel/portale-multibanca/workspace/.editor/.eslintrc.json'
let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['eslint']
let g:ale_fixers['css'] = ['stylelint']
let g:ale_fixers['scss'] = ['stylelint']
let g:ale_fixers['markdown'] = ['prettier']
let g:ale_javascript_prettier_options = '--use-tabs' " This is
let g:ale_fix_on_save = 1
" ---------------------------------------------------------------------------- ]
