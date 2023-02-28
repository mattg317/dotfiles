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

" Use hybrid row numbers
set number relativenumber
set nu rnu

" Allow hidden buffer
set hidden 


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git etc. anyway...

set noswapfile
set nowb

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use spaces instead of tabs
set expandtab 

" Be smart when using tabs
set smarttab

" 1 tabe == 4 spaces
set shiftwidth=4
set tabstop=4


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Plugins
call plug#begin('~/.vim/plugged')
    Plug 'preservim/nerdtree'
    Plug 'cormacrelf/vim-colors-github'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'gabrielelana/vim-markdown'
    Plug 'preservim/nerdcommenter'
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Color Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colorscheme
colorscheme github

" Enable syntax higlighting
syntax enable

" Syntaxt highlighting
syntax on

" Set encoding
set encoding=utf8

" Light version of the github color scheme
set background=light

" since line numbers are set in the colorscheme and syntax
" this needs to be called after it
highlight LineNr ctermfg=DarkGrey

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Remappings 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Remappings
inoremap jk <ESC>
nnoremap <leader>r :so $MYVIMRC<CR>
nnoremap <C-D> <C-D>zz
nnoremap <C-U> <C-U>zz


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Status Line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" mode git status file file tupe line: col:
let g:currentmode={
            \ 'n'  : 'NORMAL ',
            \ 'v'  : 'VISUAL ',
            \ 'V'  : 'V-line ',
            \ "\<C-V>"  : 'V-Block ',
            \ 'i'  : 'INSERT ',
            \ 'R'  : 'R ',
            \ 'Rv'  : 'V-Replace ',
            \ 'c'  : 'Command ',
            \}


"Show status line
set laststatus=2

set statusline=
set statusline+=%#MatchParen#
set statusline+=\ %{toupper(g:currentmode[mode()])}
" set statusline+=
set statusline+=%#ToolbarLine# " change color here 
set statusline+=\ %f
set statusline+=%m\ 
set statusline+=%=
set statusline+=%#MatchParen#
set statusline+=\ %y
set statusline+=\ Line:\ %l/%L
set statusline+=\ Col:\ %c

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree and Commenter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
let NERDTreeShowHidden=1
let NERDTReeIgnore= ['\.pyc$', '__pycache__']
let NERDTreeQuitOnOpen=1
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>nn :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>

" NERDCommenter
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc, tmux, etc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_SR = "\<Esc>]50;CursorShape=2\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" Adds file name when using tmux
set t_ts=]2;
set t_fs=\\
set titlestring=%t
set title

autocmd BufNewFile,BufRead * setlocal formatoptions-=cro
