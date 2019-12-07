set number
set tabstop=8
set shiftwidth=8
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

" autocmd FileType rust filetype plugin indent on
" No Idea why the above doesn't work:
" https://github.com/rust-lang/rust.vim/issues/262
filetype plugin indent on
let g:rust_recommended_style = 0

" C/C++/Java files
autocmd FileType c,cpp,cc,java setlocal cindent
set cino=:0g0N-st0(0Wsi0

set nomodeline
