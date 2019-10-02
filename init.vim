" set number and relatvie number
set nu
set rnu
set ruler
set cursorline
syntax enable
syntax on
" set the colorscheme of lightline.vim
let g:lightline={ 'colorscheme': 'one'}
" enbale deoplete
let g:deoplete#enable_at_startup = 1
" set the colorscheme for vim
set termguicolors
colorscheme gruvbox
set background=dark
" set fold method
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
" tab 4 spaces
set shiftwidth=4

set sm
set hlsearch
set matchtime=3
set laststatus=2
" set the Leader key
let mapleader=","
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
nnoremap <Leader>ln <Esc>:Tab /=<CR>
" configure the plugins
call plug#begin()
    Plug 'mhinz/vim-startify'
    Plug 'sickill/vim-monokai'
    Plug 'scrooloose/nerdtree'
    Plug 'itchyny/lightline.vim'
    Plug 'scrooloose/nerdcommenter'
    Plug 'godlygeek/tabular'
    Plug 'tpope/vim-surround'
    Plug 'plasticboy/vim-markdown'
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
    Plug 'shougo/deoplete.nvim'
    Plug 'deoplete-plugins/deoplete-jedi'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
    Plug 'yggdroot/indentline'
    Plug 'morhetz/gruvbox'
    Plug 'easymotion/vim-easymotion'
    Plug 'itchyny/vim-cursorword'
    Plug 'lfv89/vim-interestingwords'
    Plug 'Chiel92/vim-autoformat'
    Plug 'majutsushi/tagbar'
    Plug 'ryanoasis/vim-devicons'
call plug#end()
"----------------------------------------------------------------------
" plugins - vim-startify 
"----------------------------------------------------------------------
let g:startify_files_number = 10
let g:startify_bookmarks = [
    \ { 'ni': '~/.config/nvim/init.vim' },
    \ ]

let g:startify_commands = [
    \ ':h startify-options',
    \ ]

hi StartifyFooter ctermfg = red
let g:startify_custom_footer =
   \ ['', "   Hello, Sherlock Holmes!", '']
"-----------------------------------------------------------------------
" plugins - vim-autoformat
"-----------------------------------------------------------------------
noremap <F3> :Autoformat<CR>
let g:formatter_yapf_style = 'pep8'
"-----------------------------------------------------------------------
" plugins - tagbar
"-----------------------------------------------------------------------
nmap <F8> :TagbarToggle<CR>
" open preview panel
" let g:tagbar_autopreview = 1
" close element sort base on initial letter
let g:tagbar_sort = 0
