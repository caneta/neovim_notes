" Hook needed for deoplete installation
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

" ==============================================================
" Using vim-plug as plugin manager
call plug#begin('~/.config/nvim/plugins')

" Look and feel
" Plug 'mhinz/vim-startify'       " Fancy start screen
Plug 'morhetz/gruvbox'          " Retro groove color scheme
Plug 'tomasr/molokai'           " Monokai inspired color scheme
Plug 'mhartington/oceanic-next' " Sublime Text inspired color scheme
Plug 'ryanoasis/vim-devicons'   " File type icons to many plugins such as NERDTree, vim-airline, etc
Plug 'vim-airline/vim-airline'  " Light status bar and tabline
Plug 'Yggdroot/indentLine'      " Display indentation levels with vertical lines
Plug 'shmargum/vim-sass-colors' " Color the background of a CSS colorname (Hex, RGBA, etc)
Plug 'junegunn/vim-emoji'       " Enables emoji in Vim
Plug 'wellle/targets.vim'       " Additional text objects
Plug 'blueyed/vim-diminactive'  " Dim inactive windows
Plug 'matze/vim-move'           " Move lines avoiding cut and paste

" Utilities
Plug 'tpope/vim-commentary'      " Comment/uncomment code easily
Plug 'tpope/vim-repeat'          " Extend the . command to make it work with plugins
Plug 'tpope/vim-surround'        " Surround text with parenthesis, quotes, etc.
Plug 'tpope/vim-unimpaired'      " Remaps to move between buffers, quickfix items and more
Plug 'tpope/vim-fugitive'        " A git wrapper
Plug 'tpope/vim-vinegar'         " Defines some netrw behaviours and mappings
Plug 'godlygeek/tabular'         " Text filtering and alignment
Plug 'easymotion/vim-easymotion' " Better vim motions
Plug 'henrik/vim-indexed-search' " When perform a search, it prints automatically 'At match #N out of M matches'


" Source files navigation
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " Command line Fuzzy Finder
Plug 'junegunn/fzf.vim'     " FZF Neovim Wrapper
Plug 'majutsushi/tagbar'    " Class outline viewer: ctags dependency needed


" Autocompletion
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }      " Asynchronous keyword completion
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' } " JavaScript source for deoplete 
Plug 'Raimondi/delimitMate' " Auto complete quotes and brackets while you're typing
Plug 'mattn/emmet-vim'      " Expand abbreviations for Web Development with emmet syntax

" Linting
Plug 'ludovicchabant/vim-gutentags' " (Re)Generate tag files while you are working
Plug 'neomake/neomake'              " Asynchronous make inspired by Syntactic plugin

" Syntax 
Plug 'andreshazard/vim-freemarker' " Apache templating language, java based
Plug 'elzr/vim-json'               " Better Json syntax
Plug 'othree/html5.vim'            " Better HTML5 syntax and omnicompletion
Plug 'digitaltoad/vim-pug'         " Pug templating language
Plug 'elixir-lang/vim-elixir'      " Elixir language support

call plug#end()
