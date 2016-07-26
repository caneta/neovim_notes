autocmd! BufWritePost,BufEnter * Neomake " To run neomake automatically at file save

" how to display messages
let g:neomake_warning_sign = { 'text': '⚠️' }
let g:neomake_error_sign = { 'text': '❌' }
let g:neomake_style_warning_sign = { 'text': '💩' }
let g:neomake_style_error_sign = { 'text': '⁉️' }

" let g:neomake_java_javac_maker = {
" \ 'args': ['cp', '~/liferay/progetti/inpeco/landingPages/bundles/tomcat-8.0.32/lib/ext'],
" \ }

let g:neomake_java_javac_maker = {
\ 'args': ['cp', '~/Scrivania/liferay-ce-portal-src-7.0-ga2'],
\ }

" vim-airline
let g:airline_theme='oceanicnext'
let g:airline_powerline_fonts=1 " Use powerline fonts, installed with nerd fonts
let g:airline#extensions#tabline#enabled=1 " Set enhanced tabline
let g:airline#extensions#tabline#fnamemod=':t' " Filename format: tail of the filename

" delimitMate
let delimitMate_expand_cr=1 " Put a further <CR> after, for exampole a {<CR>

" Colorizer
let g:colorizer_auto_filetype='css,html,scss,jsp,ftl,js'
let g:colorizer_skip_comments=1
let g:colorizer_colornames=0

" deoplete
let g:deoplete#enable_at_startup=1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"| " Use tab to autocomplete
autocmd CompleteDone * pclose! " Automatically close scratch window after selection

" deoplete-ternjs
let g:tern_request_timeout=1
" let g:tern_show_signature_in_pum=0  " This do disable full signature type on autocomplete

" vim-commentary
autocmd FileType sql set commentstring=--\ %s
autocmd FileType jsp set commentstring=<%--\ %s\ --%>
autocmd FileType freemarker set commentstring=<#--\ %s\ -->

" tagbar
nmap <F8> :TagbarToggle<CR>

" vim-startify: where to store/load sessions to/from
let g:startify_session_dir = '~/.config/nvim/session'

" vim-startify: number of file listed
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

" indentLine
let g:indentLine_char="┊" " Custom character for vertical lines highlighting indentation

" vim-json
let g:vim_json_syntax_conceal=0 " Remove double quote hide

" Emoji
set completefunc=emoji#complete
