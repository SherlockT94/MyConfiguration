set nu
set ruler
set cursorline
syntax enable
syntax on

let g:lightline = { 'colorscheme': 'one'}

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
call plug#begin()
	Plug 'sickill/vim-monokai'
	Plug 'scrooloose/nerdtree'
	Plug 'itchyny/lightline.vim'
call plug#end()

