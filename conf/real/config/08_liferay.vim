" Emulating Ctrl-Shift-r on Eclipse IDE: changed in \fl
" Search for files inside Liferay source code (needs fzf.vim plugin)
nnoremap <leader>fl :Files ~/liferay<CR>

" Emulating Ctrl-Shift-t on Eclipse IDE: changed in :AgL
" Search for classes inside Liferay source code (needs fzf.vim plugin)
function! s:ag_with_opts(arg, bang)
  let tokens  = split(a:arg)
  call insert(tokens, '--java')
  let ag_opts = join(filter(copy(tokens), 'v:val =~ "^-"'))
  let query   = join(filter(copy(tokens), 'v:val !~ "^-"'))
  call fzf#vim#ag(query, ag_opts, extend({'dir': '~/liferay/src/'}, a:bang ? {} : {'down': '40%'}))
endfunction

autocmd VimEnter * command! -nargs=* -bang AgL call s:ag_with_opts(<q-args>, <bang>0)
