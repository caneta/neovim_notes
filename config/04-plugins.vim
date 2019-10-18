" Using vim-plug as plugin manager:
"   * [DEPS]: plugin dependent on third party packages (see plugin docs)
"   * [CONF]: plugin behaviour customized with configuration commands

call plug#begin('~/.config/nvim/plugins')

" Look and feel
Plug 'mhinz/vim-startify'       " [CONF] Fancy start screen
Plug 'sheerun/vim-polyglot'     " A collection of language packs
Plug 'mhartington/oceanic-next' " Sublime Text inspired color scheme (used by  vim-airline)
Plug 'trevordmiller/nova-vim'   " Pastel color theme
Plug 'arcticicestudio/nord-vim' " Nordic color theme
Plug 'ryanoasis/vim-devicons'   " [DEPS] File type icons to many plugins such as NERDTree, vim-airline, etc
Plug 'vim-airline/vim-airline'  " [CONF] Light status bar and tabline
Plug 'Yggdroot/indentLine'      " Display indentation levels with vertical lines
Plug 'ap/vim-css-color'         " Color the background of a CSS colorname (Hex, RGBA, etc)
Plug 'wellle/targets.vim'       " Additional text objects
Plug 'matze/vim-move'           " Move lines avoiding cut and paste
Plug 'Valloric/MatchTagAlways'  " Highlight tag in which I'm in
Plug 'junegunn/vim-emoji'       " Write emoji in vim, like :blu and pressing <C-x><C-u>
Plug 'markonm/traces.vim'       " Range, pattern and substitute preview
Plug 'TaDaa/vimade'             " Fades your inactive buffers

" Utilities
Plug 'tpope/vim-commentary'         " Comment/uncomment code easily
Plug 'tpope/vim-surround'           " Surround text with parenthesis, quotes, etc.
Plug 'tpope/vim-unimpaired'         " Remaps to move between buffers, quickfix items and more
Plug 'tpope/vim-vinegar'            " Defines some netrw behaviours and mappings
Plug 'tpope/vim-fugitive'           " Git wrapper
Plug 'tpope/vim-repeat'             " Extend the . command to make it work with plugins
Plug 'tpope/vim-speeddating'        " Use CTRL-A/CTRL-X to increment dates, times, and more
Plug 'tpope/vim-characterize'       " Adds information to UTF characters metadata with ga command
Plug 'easymotion/vim-easymotion'    " Better vim motions
Plug 'google/vim-searchindex'       " When perform a search, it prints automatically 'At match #N out of M matches'
Plug 'Valloric/ListToggle'          " Open location list and quickfix list with ease
Plug 'amadeus/vim-convert-color-to' " Convert CSS colors between different formats

function! BuildComposer(info)
  if a:info.status != 'unchanged' || a:info.force
    if has('nvim')
      !cargo build --release
    else
      !cargo build --release --no-default-features --features json-rpc
    endif
  endif
endfunction
Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') } " Markdown composer

" Source files navigation
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " Command line Fuzzy Finder
Plug 'junegunn/fzf.vim'             " FZF Neovim Wrapper
Plug 'jesseleite/vim-agriculture'   " Make possible to use silver searcher (Ag) with fzf like in the command line
Plug 'ludovicchabant/vim-gutentags' " [DEPS] (Re)Generate tag files while you are working
Plug 'skywind3000/gutentags_plus'   " Keeps gutentags on separate databases
Plug 'majutsushi/tagbar'            " [DEPS] Class outline viewer: ctags dependency needed

" Autocompletion
Plug 'SirVer/ultisnips'     " Autocompletion with snippets
Plug 'honza/vim-snippets'   " List of a lot of snippets
Plug 'Raimondi/delimitMate' " Auto complete quotes and brackets while you're typing
Plug 'mattn/emmet-vim'      " Expand abbreviations for Web Development with emmet syntax

Plug 'autozimu/LanguageClient-neovim', {'branch':'next', 'do':'bash install.sh'} " Language Server Protocol
Plug 'ncm2/ncm2'                  " Autocompletion framework
Plug 'roxma/nvim-yarp'            " Remote plugin framework, depency for ncm2
Plug 'ncm2/ncm2-bufword'          " ncm2 autocompletion sources for current buffer
Plug 'fgrsnau/ncm2-otherbuf'      " ncm2 autocompletion sources for other opened buffers
Plug 'ncm2/ncm2-path'             " ncm2 autocompletion sources for file paths
Plug 'ncm2/ncm2-ultisnips'        " ncm2 autocompletion sources for ultisnips
Plug 'ncm2/ncm2-tagprefix'        " ncm2 autocompletion sources for tags prefix completion
Plug 'ncm2/ncm2-html-subscope'    " Detect javascript/css subscope from html code
Plug 'yuki-ycino/ncm2-dictionary' " ncm2 autocompletion sources for dictionary

" Linting
Plug 'dense-analysis/ale' " Asynchronous linter for a lot of languages

" Syntax 
Plug 'andreshazard/vim-freemarker' " Apache templating language, java based
Plug 'elzr/vim-json'               " Better Json syntax
Plug 'othree/html5.vim'            " Better HTML5 syntax and omnicompletion
Plug 'digitaltoad/vim-pug'         " Pug templating language

call plug#end()
