" Indentation
set autoindent    " Copy indent from current line when starting a new line
set smartindent   " Do smart autoindenting when starting a new line
set ignorecase    " Our search will be case insensitive by default: without this, set smartcase does not work!
set smartcase     " Our search will be case sensitive if it contains an uppercase letter
set expandtab     " When pressing <Tab> use spaces instead
set softtabstop=2 " How many spaces instead of a <Tab>
set shiftwidth=2  " How many spaces with autoindent
set tabstop=2     " Number of spaces used to visually represent a <Tab>

" Folding
set foldmethod=indent " fold based on indent
set nofoldenable      " no fold by default
set foldcolumn=2      " show columns of folding representation at a side of window
set foldlevel=1       " folds with a higher level will be closed
set foldnestmax=2     " deepest fold nesting

" Other
set number                 " Set line numbers
set title                  " Set title in terminal window
set completeopt-=preview   " keep the preview window closed (used in deoplete plugin)
set clipboard+=unnamedplus " to put yanked lines into clipboard
set hidden                 " Switching to another buffer, it hides already opened and modified buffers instead of closing them
set nobackup               " Do not produce backup files with ~ postfix
set iskeyword+=\-          " Makes dashed variables like $my-variable, available for autocompletion

" Disable continuation of comments to the next line
autocmd FileType * set formatoptions-=c formatoptions-=r formatoptions-=o

" Omnifunc autocompletion
filetype plugin on
set omnifunc=syntaxcomplete#Complete
