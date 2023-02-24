"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set leader to spacebar
nnoremap <SPACE> <Nop>
let mapleader = " "
" set nocompatible " Don't try to be vi compatible

" Fast saving
nnoremap <leader>w :w!<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show row and column rule information
set ruler 

" Always case-insensitive
set ignorecase 

" when searching try to be smart about cases
set smartcase

" Highlight all search results
set hlsearch 

" Make search act like search in modern browsers
set incsearch 

" Show matching brackets when text indicator is over them
set showmatch

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax higlighting
syntax enable

" Set encoding
set encoding=utf8

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git etc. anyway...

set noswapfile
set nowb

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set formatoptions-=cro

" Use spaces instead of tabs
set expandtab 

" Be smart when using tabs
set smarttab

" 1 tabe == 4 spaces
set shiftwidth=4
set tabstop=4

" Plugins
call plug#begin('~/.vim/plugged')
    Plug 'preservim/nerdtree'
    Plug 'cormacrelf/vim-colors-github'
    Plug 'christoomey/vim-tmux-navigator'
call plug#end()
" Colorscheme
colorscheme github

" General settings
syntax on
set number " Show line numbers
set background=light
set hidden " Allow hidden buffers

" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_SR = "\<Esc>]50;CursorShape=2\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" NERDTree setting
nnoremap <leader>n :NERDTreeFocus<CR>

" Remappings
inoremap jk <ESC>
nnoremap <leader>r :so $MYVIMRC<CR>
nnoremap <C-D> <C-D>zz
nnoremap <C-U> <C-U>zz

set t_ts=]2;
set t_fs=\\
set titlestring=%t
set title


