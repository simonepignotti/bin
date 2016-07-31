" Map the leader key to SPACE
let mapleader="\<SPACE>"

set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set showmode            " Show current mode.
set ruler               " Show the line and column numbers of the cursor.
set number              " Show the line numbers on the left side.
set shiftwidth=2        " Indent of 2 spaces
set tabstop=2           " Render TABs using this many spaces.
set smarttab

" Toggle paste mode
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

set noerrorbells        " No beeps.
set modeline            " Enable modeline.
set esckeys             " Cursor keys in insert mode.
set linespace=0         " Set line-spacing to minimum.

" Do not continue comments on new lines
au FileType * set fo-=c fo-=r fo-=o

" More natural s
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.

if !&scrolloff
				set scrolloff=3       " Show next 3 lines while scrolling.
endif
if !&sidescrolloff
				set sidescrolloff=5   " Show next 5 columns while side-scrolling.
endif
set display+=lastline
set nostartofline       " Do not jump to first character with page commands.
set magic               " Use 'magic' patterns (extended regular expressions).
set incsearch           " Incremental search.
set hlsearch            " Highlight search results.
" Use ; for commands.
nnoremap ; :
" Use Q to execute default register.
nnoremap Q @q

" Relative numbering
function! NumberToggle()
				if(&relativenumber == 1)
								set nornu
								set number
				else
								set rnu
				endif
endfunc
" Toggle between normal and relative numbering.
nnoremap <leader>r :call NumberToggle()<cr>

