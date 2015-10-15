set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start
                    " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                    "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                    "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

filetype plugin indent on

if &t_Co >= 256 || has("gui_running")
	colorscheme mustang
endif

if &t_Co > 2 || has("gui_running")
	" switch syntax highlighting on, when the terminal has colors
	syntax on
endif

nnoremap ; :
inoremap jj <esc>
nmap <c-j> :bp<cr>
nmap <c-k> :bn<cr>
nmap ,v :e ~/_vimrc<cr>

let g:agprg="ag --vimgrep"

" clipboard
vnoremap <m-c> "*yy
nnoremap <m-v> "*p

" You complete me
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

" vundle stuff
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Bundle 'VundleVim/Vundle.vim'

" My bundles
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'tpope/vim-surround'
Bundle 'Shougo/neosnippet-snippets'
Bundle 'Shougo/neosnippet.vim'
Bundle 'myusuf3/numbers.vim'
Bundle 'easymotion/vim-easymotion'
Bundle 'majutsushi/tagbar'
Bundle 'rking/ag.vim'
Bundle 'Raimondi/delimitMate'
Bundle 'docunext/closetag.vim'
Bundle 'tomtom/tlib_vim'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'
Bundle 'Valloric/YouCompleteMe'
Bundle 'flazz/vim-colorschemes'

call vundle#end()

color frood

" cscope and ctags
set tags=./tags

filetype plugin indent on
