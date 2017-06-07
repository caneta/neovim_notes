colorscheme OceanicNext             " Colorscheme used at startup
set termguicolors                   " Use 24 bit colors
set background=dark                 " Set colorscheme dark variant
set list                            " Display unprintable characters
set listchars=tab:▸\ ,eol:¬         " Redefine unprintable characters
set cursorline                      " Highlight current line
set showmatch                       " blink on matching brackets
let &colorcolumn=join(range(82,82),",") " set different color for column 81
set showbreak=↪                     " show symbol on wrapped lines
" let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1 " Pipe shaped cursor in insert mode (does not work in gnome-terminal-3.12.3)
