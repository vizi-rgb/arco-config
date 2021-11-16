" Plugin section
call plug#begin('~/.vim/plugged')

" Autoclosing brackets etc.
Plug 'https://github.com/vim-scripts/AutoClose.git'

call plug#end() 

" Set section
set number
set noswapfile
set ruler
set ai
set si
set wrap
set smarttab
set expandtab 
set shiftwidth=4
set tabstop=4
set background=dark
set t_Co=256 
set ttimeoutlen=100

" Theme settings
packadd! dracula
syntax enable
colorscheme dracula

"inoremap { {<CR>}<Esc>ko
"inoremap ( ()<Esc>i
"inoremap < <><Esc>i

" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif


