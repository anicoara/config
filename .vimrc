set number
set tabstop=4
set shiftwidth=4
"set expandtab
set cindent
"set textwidth=80
set formatoptions+=ro
if &diff
    colorscheme desert
endif

" Turn off expandtab for makefiles
autocmd FileType make setlocal noexpandtab
set t_Co=256

set hlsearch
set incsearch

set ls=2
