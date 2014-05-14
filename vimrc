set nocompatible              " be iMproved, required
filetype off                  " required

set t_Co=256
set background=dark
set term=screen-256color
color jellybeans 

" Lightline config
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'component': {
      \   'readonly': '%{&readonly?"⭤":""}',
      \ },
      \ 'separator': { 'left': '⮀', 'right': '⮂' },
      \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
      \ }
set laststatus=2

" Tmuxline config
let g:tmuxline_preset = {
      \'a'    : '#S',
      \'win'  : ['#I', '#W'],
      \'cwin' : ['#I', '#W', '#F'],
      \'y'    : ['%R', '%a', '%Y'],
      \'z'    : '#H'}


" make backspace work
set backspace=2

" allows for mouse scrolling
set mouse=a

" visual up and down movement through wrapped lines/paragraphs
noremap j gj
noremap k gk

" change mapleader from \ to ,
let mapleader=","

" Unmap the arrow keys
no <down> <Nop>
no <up> <Nop>
no <left> <Nop>
no <right> <Nop>
ino <down> <Nop>
ino <up> <Nop>
ino <left> <Nop>
ino <right> <Nop>

" quickly edit/reload .vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

:map <MiddleMouse> "*p 
:map! <MiddleMouse> <C-R>* 


" enable +clipboard
set clipboard=unnamedplus

set tabstop=2
set expandtab
set shiftwidth=2
set autoindent
set smartindent
set ignorecase

set number
set showcmd
set title
set nobackup
set noswapfile

" Vim can highlight whitespaces for you in a convenient way:
set list
set listchars=tab:>_,trail:.,extends:#,nbsp:.


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" let Vundle manage Vundle, required
Bundle 'gmarik/Vundle.vim'

"Bundle 'tpope/vim-fugitive'
"Bundle 'moll/vim-node'
"Bundle 'jelera/vim-javascript-syntax'
"Bundle 'pangloss/vim-javascript'
Bundle 'digitaltoad/vim-jade'
"Bundle 'scrooloose/nerdtree'
"Bundle 'tpope/vim-surround'
"Bundle 'scrooloose/nerdcommenter'
" Bundle 'godlygeek/tabular'
" Bundle 'jamescarr/snipmate-nodejs'
" Bundle 'MarcWeber/vim-addon-mw-utils'
" Bundle 'tomtom/tlib_vim'
" Bundle 'garbas/vim-snipmate'
"Bundle 'Raimondi/delimitMate'
"Bundle 'nathanaelkane/vim-indent-guides'
"Bundle 'scrooloose/syntastic'
" Bundle 'Valloric/YouCompleteMe'
" Bundle 'marijnh/tern_for_vim'
Bundle 'edkolev/tmuxline.vim'
Bundle 'itchyny/lightline.vim'
"Bundle 'maksimr/vim-jsbeautify'

" Bundle from http://vim-scripts.org/vim/scripts.html
Bundle 'L9'
Bundle 'togglecursor'

" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required


syntax on
filetype plugin indent on    " required
