" set number and relatvie number
set nu
set rnu
set ruler
set cursorline
syntax enable
syntax on
" Enbale deoplete
let g:deoplete#enable_at_startup = 1
" Set the colorscheme for vim
" set termguicolors, commit this when using URxvt
let g:gruvbox_italic=1
colorscheme gruvbox
set background=dark
" Set fold method
set foldmethod=indent
" Autoindent the next line follow the style of current line
set autoindent
" Smartindent base on syntax
set smartindent
" Turn tab to spaces
set expandtab
" /t = 4 spaces
set tabstop=4
" When you do backspace and tab, 4 spaces will be treated as a tab
set softtabstop=4
" Tab 4 spaces
set shiftwidth=4

set sm
set hlsearch
set matchtime=3
set laststatus=2
" Set the Leader key
let mapleader=","
" Key mappings
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
" Configure the plugins
call plug#begin()
    Plug 'mhinz/vim-startify'
    Plug 'sickill/vim-monokai'
    Plug 'scrooloose/nerdtree'
    Plug 'itchyny/lightline.vim'
    Plug 'maximbaz/lightline-ale'
    Plug 'shinchu/lightline-gruvbox.vim'
    Plug 'w0rp/ale'
    Plug 'scrooloose/nerdcommenter'
    Plug 'godlygeek/tabular'
    Plug 'tpope/vim-surround'
    Plug 'plasticboy/vim-markdown'
    Plug 'suan/vim-instant-markdown'
    Plug 'shougo/deoplete.nvim'
    Plug 'deoplete-plugins/deoplete-jedi'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
    Plug 'yggdroot/indentline'
    Plug 'morhetz/gruvbox'
    Plug 'sainnhe/gruvbox-material'
    Plug 'lifepillar/vim-gruvbox8'
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
    \ { 'xr': '~/.Xresources' },
    \ { 'zr': '~/.zshrc' },
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
" Open preview panel
" Let g:tagbar_autopreview = 1
" Close element sort base on initial letter
let g:tagbar_sort = 0
"-----------------------------------------------------------------------
" plugins - ALE
"-----------------------------------------------------------------------
" Open alert bar
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 0
" Customize error & warning icons
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'
" <Leader>s toggle ALE
nmap <Leader>s :ALEToggle<CR>
" sp for last error, sn for next error
nmap sp <Plug>(ale_previous_wrap)
nmap sn <Plug>(ale_next_wrap)
"<Leader>d check detailed report for the error
nmap <Leader>d :ALEDetail<CR>
" Format echo messages
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" Set linter for different languages
let g:ale_linters = {
\   'c++': ['clang'],
\   'c': ['clang'],
\   'python': ['pylint'],
\}
"-----------------------------------------------------------------------
" plugins - lightline
"-----------------------------------------------------------------------
" Set devicons for lightline
let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'component_function': {
      \   'filetype': 'MyFiletype',
      \   'fileformat': 'MyFileformat',
      \ }
      \ }

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction
"-----------------------------------------------------------------------
" plugins - lightline-ale
"-----------------------------------------------------------------------
" Register the component
let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }
" Set color to the components:
let g:lightline.component_type = {
      \     'linter_checking': 'left',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'left',
      \ }
" Add the components to the lightline, for example to the right side:
let g:lightline.active = { 
      \ 'right': [ ['lineinfo'],
      \            [ 'percent' ],
      \            [ 'fileformat',
      \              'fileencoding',
      \              'filetype'],
      \            ['linter_checking', 
      \             'linter_errors'  , 
      \             'linter_warnings',
      \             'linter_ok' ]] 
      \ }
"-----------------------------------------------------------------------
" plugins - Instant-markdown-preview
"-----------------------------------------------------------------------
" set shell=bash\ -i
