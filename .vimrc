" Plugin section
call plug#begin('~/.vim/plugged')

Plug 'https://github.com/bling/vim-bufferline.git'
Plug 'chun-yang/auto-pairs'

call plug#end() 

" Set section
set rnu
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

" Statusline
set laststatus=2
let g:bufferline_inactive_highlight = 'StatusLineNC'
let g:bufferline_active_highlight = 'StatusLine'
let g:bufferline_echo = 0
autocmd VimEnter *
    \ let &statusline='%{bufferline#refresh_status()}'
      \ .bufferline#get_status_string()


" Theme settings
packadd! dracula
syntax enable
colorscheme dracula 
set cursorline


" Remaps
nnoremap <C-l> :bn!<CR>
nnoremap <C-h> :bp!<CR>
nnoremap <C-d> :sh<CR>

" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif 
