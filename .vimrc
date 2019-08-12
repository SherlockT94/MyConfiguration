" set number and relatvie number
set nu
set rnu
set ruler
set cursorline
syntax enable
syntax on
" set the colorscheme of lightline.vim
let g:lightline = { 'colorscheme': 'one'}
" set the colorscheme for vim
colorscheme gruvbox
set background=dark
set foldmethod=indent
" autoindent the next line follow the style of current line
set autoindent
" smartindent base on syntax
set smartindent
" turn tab to spaces
set expandtab
" /t = 4 spaces
set tabstop=4
" when you do backspace and tab, 4 spaces will be treated as a tab
set softtabstop=4
" tab = 4 spaces
set shiftwidth=4

set sm
set matchtime=3
set hlsearch
set laststatus=2

" set the Leader key
let mapleader = ","
" key mappings
nnoremap <Leader>w <Esc>:w<CR>
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap < <><Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
nmap <Leader>t :NERDTreeToggle<CR>
inoremap jj <Esc>
" configure the plugins
call plug#begin()
    Plug 'sickill/vim-monokai'
    Plug 'scrooloose/nerdtree'
    Plug 'itchyny/lightline.vim'
    Plug 'scrooloose/nerdcommenter'
    Plug 'yggdroot/indentline'
    Plug 'morhetz/gruvbox'
    Plug 'davidhalter/jedi-vim'
    Plug 'ervandew/supertab'
call plug#end()

