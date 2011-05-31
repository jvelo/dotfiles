set nocompatible
filetype indent plugin on
syntax on

set hidden " to change buffer without saving changes

set directory=~/.vim/tmp " where to put swap files

" Map Y to yank until EOL, rather than act as yy,
map Y y$

" Useful mapping for fugitive
autocmd BufReadPost fugitive://* set bufhidden=delete

set laststatus=2 " always display statusline
