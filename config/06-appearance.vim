colorscheme nova                        " Colorscheme used at startup
set termguicolors                       " Use 24 bit colors
set background=dark                     " Set colorscheme dark variant
set list                                " Display unprintable characters
set listchars=tab:▸\ ,eol:¬             " Redefine unprintable characters
set cursorline                          " Highlight current line
set cursorcolumn                        " Highlight current column
set showmatch                           " blink on matching brackets
let &colorcolumn=join(range(82,82),",") " set different color for column 81
set showbreak=↪                         " show symbol on wrapped lines

" Highlight the terminal cursor when in Normal mode
if has('nvim')
  highlight! link TermCursor Cursor
  highlight! TermCursorNC guibg=red guifg=white ctermbg=Red ctermfg=White
endif
