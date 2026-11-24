" Plugin section
call plug#begin('~/.vim/plugged')

" Shows buffers in status line
Plug 'bling/vim-bufferline'

" Inserts characters such as {} [] etc in pairs
Plug 'chun-yang/auto-pairs' 

" Colorschemes
Plug 'rafi/awesome-vim-colorschemes'

" Auto-completion
Plug 'ycm-core/YouCompleteMe'

Plug 'christoomey/vim-tmux-navigator'


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
set statusline+=%#vimTodo#
set statusline+=\ %m
set statusline+=\ %F
set statusline+=\ %y 
set statusline+=\ %v
set statusline+=\ %=
set statusline+=\ %l/%L


" Theme settings
syntax enable
colorscheme OceanicNext
set cursorline

" Remaps
nnoremap <C-l> :bn!<CR>
nnoremap <C-h> :bp!<CR>

let g:ycm_global_ycm_extra_conf = '~/.config/.ycm_extra_conf.py'
