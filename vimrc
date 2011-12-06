set nocompatible
filetype indent plugin on
syntax on

set hidden " to change buffer without saving changes

set directory=~/.vim/tmp " where to put swap files

" Map Y to yank until EOL, rather than act as yy,
map Y y$

" Add LESS syntax
au BufNewFile,BufRead *.less set filetype=less

" Useful mapping for fugitive
autocmd BufReadPost fugitive://* set bufhidden=delete

set laststatus=2 " always display statusline

set shiftwidth=2
set expandtab
set tabstop=2
set softtabstop=2

colorscheme admeris
