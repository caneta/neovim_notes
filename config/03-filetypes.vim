" Disable continuation of comments to the next line
autocmd FileType * set formatoptions-=c formatoptions-=r formatoptions-=o

" Set spelllang for markdown files
" autocmd BufRead,BufNewFile *.md setlocal spell spelllang=it

" Force jsp syntax for jsp fragment files
autocmd BufNewFile,BufRead *.jspf set syntax=jsp

" [ Git ------------------------------------------------------------------------

" https://vi.stackexchange.com/questions/11892/populate-a-git-commit-template-with-variables
" In Git commit messages, let’s make it 72 characters
autocmd FileType gitcommit set textwidth=72
autocmd FileType gitcommit set colorcolumn=73

" Git commit template with variables
" A branch is built following the pattern <type>/<jira-id>[-<roadmap-id>][-<spec>]
" where <type> can be one of [feature|release|bugfix|hotfix] and <spec> is a
" little description of the branch
" A branch name example could be 'feature/INCPOWCSLR-85-INPCDP-114-engineered-by-company'
function! s:expand_commit_template() abort
  let context = {
        \ 'CURRENT_BRANCH': matchstr(system('git rev-parse --abbrev-ref HEAD'), '\p\+'),
        \ 'JIRA_ISSUE': matchstr(system('git rev-parse --abbrev-ref HEAD | cut -d "-" -f 1,2 | cut -d "/" -f 2'), '\p\+'),
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
" ---------------------------------------------------------------------------- ]