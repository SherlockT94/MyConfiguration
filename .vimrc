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
colorscheme monokai
set autoindent
set smartindent
set tabstop=4
set softtabstop=4
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
" configure the plugins
call plug#begin()
	Plug 'sickill/vim-monokai'
	Plug 'scrooloose/nerdtree'
	Plug 'itchyny/lightline.vim'
	Plug 'scrooloose/nerdcommenter'
	Plug 'yggdroot/indentline'
call plug#end()

