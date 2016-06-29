" Using vim-plug as plugin manager
call plug#begin('~/.config/nvim/plugins')
  Plug 'mhartington/oceanic-next' " Sublime Text inspired color scheme
  Plug 'vim-airline/vim-airline'  " Light status bar and tabline
  Plug 'Yggdroot/indentLine'      " Display indentation levels with vertical lines
  Plug 'Raimondi/delimitMate'     " Auto complete quotes and brackets while you're typing
  Plug 'tpope/vim-commentary'     " Comment/uncomment code easily
  Plug 'tpope/vim-repeat'         " Extend the . command to make it work with plugins
  Plug 'tpope/vim-surround'       " Surround text with parenthesis, quotes, etc.
  Plug 'tpope/vim-unimpaired'     " Remaps to move between buffers, quickfix items and more
call plug#end()

" Look and feel
colorscheme OceanicNext    " Colorscheme used at startup
set termguicolors          " Use 24 bit colors
set background=dark        " Set colorscheme dark variant
set cursorline             " Highlight current line
set showmatch              " blink on matching brackets

" General configurations
set autoindent             " Copy indent from current line when starting a new line
set smartindent            " Do smart autoindenting when starting a new line
set expandtab              " When pressing <Tab> use spaces instead
set softtabstop=2          " How many spaces instead of a <Tab>
set shiftwidth=2           " How many spaces with autoindent
set tabstop=2              " Number of spaces used to visually represent a <Tab>
set number                 " Set line numbers
set clipboard+=unnamedplus " to put yanked lines into clipboard
set hidden                 " Switching to another buffer, it hides already opened and modified buffers instead of closing them

" Remaps (pipe is needed to make comments not part of mappings)
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>| " Set ctr-l to clean up last search match highlight
nnoremap K i<CR><Esc>|                             " The opposite of J: split single line in two at cursor position

" Mapping using key leader (default is '\')
vnoremap <leader>c "+yh|        " Visual mode: copy in the system clipboard with \c
nnoremap <leader>v "+p|         " Normal mode: paste from the system clipboard with \v
inoremap <leader>v <C-r><C-p>+| " Insert mode: paste from the system clipboard with \v
