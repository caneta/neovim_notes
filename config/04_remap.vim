" Remaps (pipe is needed to make comments not part of mappings)
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>| " Set ctr-l to clean up last search match highlight
nnoremap K i<CR><Esc>|                             " The opposite of J: split single line in two at cursor position

" Mapping using key leader (default is '\')
vnoremap <leader>c "+yh|         " Visual mode: copy in the system clipboard the selected characters with \c
nnoremap <leader>c gg"+yG''      " Normal mode: copy in the system clipboard the whole file with \c
nnoremap <leader>v "+p|          " Normal mode: paste from the system clipboard with \v
inoremap <leader>v <C-r><C-p>+|  " Insert mode: paste from the system clipboard with \v
map <leader>e :Explore<CR>|      " Open netrw Esplore window
map <leader>w :wa<CR>|           " Save every buffer
inoremap <leader>w <Esc>:wa<CR>| " Save every buffer (insert mode)
map <leader>q :wqa<CR>|          " Save every buffer and exit
map <leader>n :enew<CR>|         " Open a new buffer in a new window
map <leader>b :bd<CR>|           " Close the current buffer
map <leader>o :on<CR>|           " Close every buffer, but the current one
vnoremap <leader>s :sort<CR>|    " Visual mode: sort selection alphabetically

" Remaps for accented vowels
inoremap ''a <C-k>a!
inoremap ,e <C-k>e'|  " acute accent (i.e.: 'perché', 'sé')
inoremap ''e <C-k>e!| " grave accent (i.e.: 'cioè', 'è')
inoremap ''E <C-k>E!| " grave accent (i.e.: 'cioè', 'è')
inoremap ''i <C-k>i!
inoremap ''o <C-k>o!
inoremap ''u <C-k>u!

" Remap exit from terminal mode
tnoremap <Esc> <C-\><C-n>
