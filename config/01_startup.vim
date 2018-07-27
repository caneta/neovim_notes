" Using vim-plug as plugin manager:
"   * [DEPS]: plugin dependent on third party packages (see plugin docs)
"   * [CONF]: plugin behaviour customized with configuration commands

call plug#begin('~/.config/nvim/plugins')

" Look and feel
Plug 'mhinz/vim-startify'       " [CONF] Fancy start screen
Plug 'mhartington/oceanic-next' " Sublime Text inspired color scheme
Plug 'ryanoasis/vim-devicons'   " [DEPS] File type icons to many plugins such as NERDTree, vim-airline, etc
Plug 'vim-airline/vim-airline'  " [CONF] Light status bar and tabline
Plug 'Yggdroot/indentLine'      " Display indentation levels with vertical lines
Plug 'ap/vim-css-color'         " Color the background of a CSS colorname (Hex, RGBA, etc)
Plug 'wellle/targets.vim'       " Additional text objects
Plug 'blueyed/vim-diminactive'  " Dim inactive windows
Plug 'matze/vim-move'           " Move lines avoiding cut and paste

" Utilities
Plug 'tpope/vim-commentary'      " Comment/uncomment code easily
Plug 'tpope/vim-repeat'          " Extend the . command to make it work with plugins
Plug 'tpope/vim-surround'        " Surround text with parenthesis, quotes, etc.
Plug 'tpope/vim-unimpaired'      " Remaps to move between buffers, quickfix items and more
Plug 'tpope/vim-vinegar'         " Defines some netrw behaviours and mappings
Plug 'tpope/vim-fugitive'        " Git wrapper
Plug 'easymotion/vim-easymotion' " Better vim motions
Plug 'henrik/vim-indexed-search' " When perform a search, it prints automatically 'At match #N out of M matches'

" Source files navigation
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " Command line Fuzzy Finder
Plug 'junegunn/fzf.vim'             " FZF Neovim Wrapper
Plug 'ludovicchabant/vim-gutentags' " [DEPS] (Re)Generate tag files while you are working
Plug 'majutsushi/tagbar'    " [DEPS] Class outline viewer: ctags dependency needed

" Autocompletion
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --all' } " [DEPS] Asynchronous keyword completion

Plug 'SirVer/ultisnips' " Autocompletion with snippets
" Plug 'honza/vim-snippets' " List of a lot of snippets
Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] } " [DEPS] Tern-based JavaScript editing support
Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] } " Completion for function parameters
Plug 'Raimondi/delimitMate' " Auto complete quotes and brackets while you're typing
Plug 'mattn/emmet-vim'      " Expand abbreviations for Web Development with emmet syntax

" Linting
Plug 'w0rp/ale' " Asynchronous linter for a lot of languages

" Syntax 
Plug 'andreshazard/vim-freemarker' " Apache templating language, java based
Plug 'elzr/vim-json'               " Better Json syntax
Plug 'othree/html5.vim'            " Better HTML5 syntax and omnicompletion
Plug 'digitaltoad/vim-pug'         " Pug templating language
Plug 'mxw/vim-jsx'                 " React JSX templating language support

call plug#end()
