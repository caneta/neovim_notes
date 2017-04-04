autocmd FileType markdown setlocal softtabstop=4 shiftwidth=4
" In Git commit messages, let’s make it 72 characters
autocmd FileType gitcommit set textwidth=72
autocmd FileType gitcommit set colorcolumn=73

" Git commit template with variables
function! s:expand_commit_template() abort
  let context = {
        \ 'CURRENT_BRANCH': matchstr(system('git rev-parse --abbrev-ref HEAD'), '\p\+'),
        \ 'JIRA_ISSUE': matchstr(system('git rev-parse --abbrev-ref HEAD | cut -d "-" -f 2,3'), '\p\+'),
        \ 'AUTHOR': 'Alessandro Candini',
        \ }

  let lnum = nextnonblank(1)
  while lnum && lnum < line('$')
    call setline(lnum, substitute(getline(lnum), '\${\(\w\+\)}',
          \ '\=get(context, submatch(1), submatch(0))', 'g'))
    let lnum = nextnonblank(lnum + 1)
  endwhile
endfunction

autocmd BufRead */.git/COMMIT_EDITMSG call s:expand_commit_template()
