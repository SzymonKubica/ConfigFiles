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
set expandtab
" Makes tab shorter.
 set softtabstop=2
 set tabstop=2
 set shiftwidth=2
" Tabs for python
"set softtabstop=4
"set tabstop=4
"set shiftwidth=4
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

" Turns on the syntax highlighting.
syntax on

" Making search highlight easily readable.
set hlsearch
hi Search ctermbg=LightGreen
hi Search ctermfg=Red

hi Comment ctermfg=Grey
" vim-plug installation configuration.
" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" Points to bundle directory to look for plugins.
call plug#begin('~/.vim/bundle')
Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
call plug#end()


