set number
set tabstop=4
set shiftwidth=4
"set expandtab
set cindent
syntax enable
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

" Word wrap / text width
set textwidth=80
set formatoptions+=tc

" whitespace
"set list
"set listchars=trail:.,tab:>.
"hi SpecialKey ctermfg=DarkGrey

" autoremove trailing whitespace
autocmd FileType c,cpp,tex,java autocmd BufWritePre <buffer> :%s/\s\+$//e
