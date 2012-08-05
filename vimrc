set nocompatible
filetype indent plugin on
syntax on

set hidden " to change buffer without saving changes
set wildmenu                          " Better command-line completion 
set wildmode=list:longest

set ruler

set laststatus=2 " always display statusline
set statusline=[%n]\ %f\ %h%m%r%w\ (%{(&fenc==\"\"?&enc:&enc)})(%{&ff}){%Y}[%L]\ %=%-16(\ %l,%c-%v\ %)%P
set showcmd                           " Show partial commands in the last line
set showmode
set cmdheight=2                       " command bar height
"set number

set directory=~/.vim/tmp " where to put swap files

" Map Y to yank until EOL, rather than act as yy,
map Y y$

" Add LESS syntax
au BufNewFile,BufRead *.less set filetype=less

" Add scala support
au BufRead,BufNewFile *.scala set filetype=scala

" Groovy syntax for gradle files
au BufNewFile,BufRead *.gradle setf groovy

" Velocity
au BufRead,BufNewFile *.vm set ft=html syntax=velocity

" Useful mapping for fugitive
autocmd BufReadPost fugitive://* set bufhidden=delete

" Strip trailing whitespaces
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
command! StripTWS call <SID>StripTrailingWhitespaces()
autocmd BufWritePre *.less,*.css,*.php,*.c,*.py,*.js :call <SID>StripTrailingWhitespaces()

" open files in the same directory as the current file see vimcasts.org)
nmap <leader>ew :e <C-R>=expand("%:p:h") . "/" <CR>
nmap <leader>et :tabe <C-R>=expand("%:p:h") . "/" <CR>

set shiftwidth=2
set expandtab
set autoindent
set smartindent
set tabstop=2
set softtabstop=2

" reveal tab characters and trailing whitespaces (V) (°,,,,°) (V)
set list listchars=tab:→\ ,trail:·

colorscheme wombat
set background=dark

call pathogen#infect() 
