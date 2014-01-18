set number
set tabstop=4
set shiftwidth=4
syntax enable
set formatoptions+=ro
if &diff
    colorscheme desert
endif

set t_Co=256

set incsearch

set ls=2

" Word wrap / text width
set textwidth=80
set formatoptions+=tcq

" File Auto Commands

" Global
" autoremove trailing whitespace on write.
autocmd BufWritePre <buffer> :%s/\s\+$//e

" C/C++/Java files
autocmd FileType c,cpp,cc,java setlocal cindent
