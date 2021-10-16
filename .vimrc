"""" Enable Vundle: vim plugin manager

" required before Vundle initialization
set nocompatible        " disable compatibility mode with vi
filetype off            " disable filetype detection (but re-enable later, see below)

" set the runtime path to include Vundle, and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'wting/rust.vim' 
" enable syntax highlighting for rust
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'iamcco/markdown-preview.nvim' 
call vundle#end()


"""" Basic Behavior

set number              " show line numbers
set wrap                " wrap lines
set encoding=utf-8      " set encoding to UTF-8 (default was "latin1")
set mouse=a             " enable mouse support (might not work well on Mac OS X)
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw screen only when we need to
set showmatch           " highlight matching parentheses / brackets [{()}]
set laststatus=2        " always show statusline (even with only single window)
set ruler               " show line and column number of the cursor on right side of statusline
"set visualbell          " blink cursor on error, instead of beeping


"""" Key Bindings

" move vertically by visual line (don't skip wrapped lines)
nmap j gj
nmap k gk

map <F5> :NERDTreeToggle<CR>
let g:floaterm_keymap_toggle = '<F12>'
let g:floaterm_width = 0.9
let g:floaterm_height = 0.9

"""" Vim Appearance

" put colorscheme files in ~/.vim/colors/
"colorscheme PaperColor     " good colorschemes: murphy, slate, molokai, badwolf, solarized
"#set background=light
" use filetype-based syntax highlighting, ftplugins, and indentation
syntax enable
filetype plugin indent on
let g:airline_solarized_bg='dark'


"""" Tab settings

set tabstop=4           " width that a <TAB> character displays as
set expandtab           " convert <TAB> key-presses to spaces
set shiftwidth=4        " number of spaces to use for each step of (auto)indent
set softtabstop=4       " backspace after pressing <TAB> will remove up to this many spaces

set autoindent          " copy indent from current line when starting a new line
set smartindent         " even better autoindent (e.g. add indent after '{')


"""" Search settings

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" turn off search highlighting with <CR> (carriage-return)
nnoremap <CR> :nohlsearch<CR><CR>

" Plugins
call plug#begin()
Plug 'bluz71/vim-moonfly-colors'
Plug 'junegunn/goyo.vim'
Plug 'wojciechkepka/vim-github-dark'
Plug 'voldikss/vim-floaterm'
Plug 'voldikss/vim-floaterm'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'tibabit/vim-templates'
Plug 'ajmwagar/vim-deus'
Plug 'fcpg/vim-orbital'
Plug 'morhetz/gruvbox'
Plug 'crusoexia/vim-monokai'
call plug#end()

"""" Miscellaneous settings that might be worth enabling

"set cursorline         " highlight current line
"set background=dark    " configure Vim to use brighter colors
"set autoread           " autoreload the file in Vim if it has been changed outside of Vim
let g:airline_powerline_fonts = 1

" Templates 
" Java 
let g:tmpl_search_paths = ['~/.vim/templates']
let g:tmpl_author_name = 'HackOlympus'

colorscheme monokai

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
