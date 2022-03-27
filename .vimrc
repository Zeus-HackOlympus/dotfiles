set nocompatible 
filetype off 

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'powerline/powerline-fonts'
""Plugin 'vim-airline/vim-airline'
""Plugin 'vim-airline/vim-airline-themes'
call vundle#end()

set clipboard=unnamedplus
set guifont=Hack\ 13
set number 
""set relativenumber 
set wrap 
set encoding=utf-8
set mouse=a
set wildmenu 
set lazyredraw 
set showmatch 
set laststatus=1
set ruler 

map <F6> :NERDTreeToggle<CR>
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
Plugin 'altercation/vim-colors-solarized'
Plugin 'yuttie/comfortable-motion.vim'
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

noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(40)<CR>
noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-40)<CR>

autocmd filetype cpp nnoremap <F4> :w <bar> !g++ -std=c++11 -O2 -Wall % -o ./a.out    
autocmd filetype cpp nnoremap <F5> :w <bar> !printf "give input :\n" &&(time ./a.out)   
autocmd filetype cpp nnoremap <F6> :w <bar> !./run
