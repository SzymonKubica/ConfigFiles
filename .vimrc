" This is my .vimrc file. Version of 22.05.2021.

" The following command sets numbers of lines to be relative to the cursor. 
set relativenumber
" The following command maps <i,i> to <Esc>.
imap ii <Esc>
" This command will highlight pairs of corresponding brackets. 
set matchpairs+=<:>
" This command highlights results of a search.
set hlsearch
" These commands enable smart-indent and smart-tab.
set smartindent
set smarttab
" Makes tab shorter.
set softtabstop=2
set tabstop=2
set shiftwidth=2
" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
" Enables smart-case search and makes it case-insensitive, searches incrementally.
set smartcase
set ignorecase
set incsearch

"These commands set block cursor in normal, line in insert.
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

"Adjusts the colorscheme.
colorscheme slate

