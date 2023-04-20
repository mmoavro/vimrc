set nocompatible 
syntax on
syntax enable
set shortmess+=I
set number
set relativenumber
set laststatus=2
set tabstop=4 softtabstop=4
set backspace=indent,eol,start
set hidden
set ignorecase
set smartcase
set incsearch
nmap Q <Nop>
set noerrorbells visualbell t_vb=
set nowrap
set noswapfile
set smartindent
set guioptions-=m "remove menu bar
set guioptions-=T "remove toolbar
set guioptions-=r "remove right-hand scroll bar
set guioptions-=L "remove left-hand scroll bar

let mapleader = " "
nnoremap <leader>w :w<CR>
nnoremap <leader>ot :wincmd v<CR>:Ex<CR>:vertical resize 30<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>wq :wq<CR>
nnoremap <leader>b :b<space>
nnoremap <leader>6 <C-6>
inoremap fj <Esc>
inoremap ( ()<Esc>i
inoremap ' ''<Esc>i
inoremap { {}<Esc>i
inoremap [ []<Esc>i
inoremap <C-space> <Esc>A
inoremap <C-l> <Right>

nnoremap <leader>t$ :w<CR>:! ctags -R<CR>

autocmd FileType python nnoremap <leader>run :w<CR>:! python %<CR>
autocmd FileType python nnoremap <leader>tr :w<bar>:terminal  python %<CR>

autocmd FileType c nnoremap <leader>r :w<CR>:! gcc % -o %< && ./%<<CR>
autocmd FileType c nnoremap <leader>tr :w<CR>:terminal ++shell  gcc % -o %< && ./%<<CR>

autocmd FileType cpp nnoremap <leader>r :w<CR>:! g++ % -o %< && ./%<<CR>
autocmd FileType cpp nnoremap <leader>tr :w<CR>:terminal ++shell  g++ % -o %< && ./%<<CR>

nnoremap <leader>wj <C-w><C-j>
nnoremap <leader>wk <C-w><C-k>
nnoremap <leader>wh <C-w><C-h>
nnoremap <leader>wl <C-w><C-l>
nnoremap <leader>wo <C-w>o
nnoremap <leader>w= <C-w>=

set fileencoding=utf-8

filetype plugin on
autocmd BufNewFile *.py :set omnifunc=python3complete#Complete
set omnifunc=syntaxcomplete#Complete

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'

call plug#end()

colorscheme gruvbox
set background=dark

set path+=**
set wildmenu







