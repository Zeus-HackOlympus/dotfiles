if empty(glob("~/.vim/autoload/plug.vim"))
    execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

set nocompatible 
filetype off 


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
set background=dark

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
Plug 'altercation/vim-colors-solarized'
Plug 'yuttie/comfortable-motion.vim'
Plug 'morhetz/gruvbox'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'NLKNguyen/papercolor-theme'
Plug 'powerline/powerline-fonts'
Plug 'tell-k/vim-autopep8'
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

" w!! to save as root ; from https://github.com/crowell/dotfiles/blob/master/vimrc 
cmap w!! w !sudo tee % >/dev/null
:command WQ wq
:command Wq wq
:command W w
:command Q q



if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color GNU screen.
  set t_ut=
endif
colorscheme PaperColor 
