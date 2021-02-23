" This is my .vimrc file. The following commands try no mimic my vim emulator setup from vscode.

" The following command sets numbers of lines to be relative to the position of the cursor.
set relativenumber
" The following command maps <i,i> to <Esc> which makes transitions between normal and insert mode quite seamless.
imap ii <Esc>
" This command will highlight pairs of corresponding brackets. I don't know if it will work yet.
set matchpairs+=<:>
" This command highlights results of a search
set hlsearch
" These commands enable smart-indent and smart-tab
set smartindent
set smarttab
" Makes tab shorter
set softtabstop=2
" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
" Enables smart-case search and makes it case-insensitive also searches incrementally
set smartcase
set ignorecase
set incsearch

"These commands are supposed to affect the cursor to make it a bit more vim-ish (block cursor in normal, line in insert)
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"
