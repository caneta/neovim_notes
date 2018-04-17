" Emulating Ctrl-Shift-r on Eclipse IDE: changed in \fl
" Search for files inside Liferay source code (needs fzf.vim plugin)
" nnoremap <leader>fl :Files ~/liferay<CR>

" Emulating Ctrl-Shift-t on Eclipse IDE: changed in :AgL
" Search for classes inside Liferay source code (needs fzf.vim plugin)
" autocmd! VimEnter * command! -nargs=* -complete=file AgL :call fzf#vim#ag_raw('--java '. <q-args> .' ~/liferay/src/')
