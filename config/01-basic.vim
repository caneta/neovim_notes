" General
set number                 " Set line numbers
set title                  " Set title in terminal window
set clipboard+=unnamedplus " to put yanked lines into clipboard
set hidden                 " Switching to another buffer, it hides already opened and modified buffers instead of closing them
set nobackup               " Do not produce backup files with ~ postfix
set iskeyword+=\-          " Makes dashed variables like $my-variable, available for autocompletion
set updatetime=100         " If nothing happens on screen, after how many ms the swap file is written to disk (default is 4000)
filetype plugin indent on  " Detect file types, load its plugin and apply its indentation
syntax enable              " Switch on syntax highlighting
set shortmess-=S           " Set search matches count

" Indentation
set smartindent   " Do smart autoindenting when starting a new line
set ignorecase    " Our search will be case insensitive by default: without this, set smartcase does not work!
set smartcase     " Our search will be case sensitive if it contains an uppercase letter
set expandtab     " When pressing <Tab> use spaces instead
set softtabstop=2 " How many spaces instead of a <Tab>
set shiftwidth=2  " How many spaces with autoindent
set tabstop=2     " Number of spaces used to visually represent a <Tab>

" Folding
set foldmethod=indent " Lines with equal indent form a fold
" set foldmethod=manual " Folds are created manually
" set foldmethod=expr   " 'foldexpr' gives the fold level of a line
" set foldmethod=marker " Markers are used to specify folds
" set foldmethod=syntax " Syntax highlighting items specify folds
" set foldmethod=diff   " Fold text that is not changed
set nofoldenable      " no fold by default
set foldcolumn=2      " show columns of folding representation at a side of window
set foldlevel=1       " folds with a higher level will be closed
set foldnestmax=10    " deepest fold nesting

" Sessions
set sessionoptions+=localoptions

" Autocompletion
set omnifunc=syntaxcomplete#Complete " Omnifunc autocompletion

" Netrw file browser (Vim included plugin enabled by default)
let g:netrw_fastbrowse = 0
