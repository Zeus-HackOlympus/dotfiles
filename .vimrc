set nocompatible 
filetype off 

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
call vundle#end()

set number 
set wrap 
set encoding=utf-8
set mouse=a
set wildmenu 
set lazyredraw 
set showmatch 
set laststatus=2
set ruler 

map <F5> :NerdTreeToggle<CR>
syntax enable 
filetype plugin indent on 
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent 
set smartindent

set incsearch 
set hlsearch 

nnoremap <CR> :nohlsearch<CR><CR>

call plug#begin()
Plug 'preservim/nerdtree'
Plug 'tibabit/vim-templates'
Plug 'ajmwagar/vim-deus'
Plug 'bluz71/vim-moonfly-colors'
Plug 'fcpg/vim-orbital'
Plug 'morhetz/gruvbox'
Plug 'patstockwell/vim-monokai-tasty'
call plug#end()

let g:airline_powerline_fonts = 1
let g:tmpl_search_paths = ['~/.vim/templates']
let g:tmpl_author_name = 'HackOlympus'

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
