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
" ---------------------------------------------------------------------------- ]

" [ delimitMate ----------------------------------------------------------------
let g:airline_theme='oceanicnext'
let delimitMate_expand_cr=1 " Put a further <CR> after, for exampole a {<CR>
" ---------------------------------------------------------------------------- ]

" [ Colorizer ----------------------------------------------------------------
let g:colorizer_auto_filetype='css,html,scss,jsp,ftl,js'
let g:colorizer_skip_comments=1
let g:colorizer_colornames=0
" ---------------------------------------------------------------------------- ]

" [ deoplete ----------------------------------------------------------------
let g:deoplete#enable_at_startup=1
let g:deoplete#omni#functions = {}
let g:deoplete#omni#functions.javascript = [
  \ 'tern#Complete',
  \ 'jspc#omni'
\]
set completeopt=longest,menuone,preview
set completeopt-=preview
let g:deoplete#sources = {}
let g:deoplete#sources['javascript.jsx'] = ['file', 'ultisnips', 'ternjs']
let g:tern#command = ['tern']
let g:tern#arguments = ['--persistent']
autocmd FileType javascript let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:UltiSnipsExpandTrigger="<C-j>"
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"| " Use tab to autocomplete
autocmd CompleteDone * pclose! " Automatically close scratch window after selection
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

" [ neomake --------------------------------------------------------------------
autocmd! BufWritePost,BufEnter * Neomake " To run neomake automatically at file save

" how to display messages
let g:neomake_warning_sign = { 'text': '⚠️' }
let g:neomake_error_sign = { 'text': '❌' }
let g:neomake_style_warning_sign = { 'text': '💩' }
let g:neomake_style_error_sign = { 'text': '⁉️' }

" let g:neomake_java_javac_maker = {
" \ 'args': ['cp', '~/liferay/progetti/customer/project/bundles/tomcat-8.0.32/lib/ext'],
" \ }

let g:neomake_java_javac_maker = {
\ 'args': ['cp', '~/Scrivania/liferay-ce-portal-src-7.0-ga2'],
\ }

let g:neomake_javascript_enabled_makers = ['eslint']

" let g:neomake_scss_scsslint_maker = {
" \ 'args': ['--config', '~/liferay/progetti/customer/project/themes/my-theme/src/css/.scss-lint.yml'],
" \ }
" ---------------------------------------------------------------------------- ]
