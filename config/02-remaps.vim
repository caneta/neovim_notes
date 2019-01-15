" Remaps (pipe is needed to make comments not part of mappings)
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>| " Set ctr-l to clean up last search match highlight
nnoremap K i<CR><Esc>|                             " The opposite of J: split single line in two at cursor position

" Mapping using key leader (default is '\')
vnoremap <leader>c "+yh|          " Visual mode: copy in the system clipboard the selected characters with \c
nnoremap <leader>c gg"+yG''       " Normal mode: copy in the system clipboard the whole file with \c
nnoremap <leader>v "+p|           " Normal mode: paste from the system clipboard with \v
inoremap <leader>v <C-r><C-p>+|   " Insert mode: paste from the system clipboard with \v
map <leader>e :Explore<CR>|       " Open netrw Esplore window
map <leader>w :wa<CR>|            " Save every buffer
inoremap <leader>w <Esc>:wa<CR>i| " Save every buffer (insert mode)
map <leader>n :enew<CR>|          " Open a new buffer in a new window
map <leader>d :bd<CR>|            " Close the current buffer
map <leader>o :on<CR>|            " Close every buffer, but the current one
map <leader>x :xa<CR>|            " Save every modified buffer and quit Vim
vnoremap <leader>s :sort<CR>|     " Visual mode: sort selection alphabetically
nmap <leader>ff :echo @%<CR>|     " Print file name with relative path to curdir

" Remaps for accented vowels
inoremap ''a <C-k>a!
inoremap ,e <C-k>e'|  " acute accent (i.e.: 'perché', 'sé')
inoremap ''e <C-k>e!| " grave accent (i.e.: 'cioè', 'è')
inoremap ''E <C-k>E!| " uppercase grave accent (i.e.: 'cioè', 'è')
inoremap ''i <C-k>i!
inoremap ''o <C-k>o!
inoremap ''u <C-k>u!

" Switch between windows with Tab and Shift-Tab in Normal Mode
nnoremap <Tab> <C-w>w
nnoremap <S-Tab> <C-w>W

" Set <Esc> to exit terminal mode
if has('nvim')
  tnoremap <Esc> <C-\><C-n>
  tnoremap <C-v><Esc> <Esc>
endif
