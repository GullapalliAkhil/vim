set nocompatible

" works in gvim only
set autoread

" PEP8 indentation
set tabstop=4
set shiftwidth=4
set textwidth=99
set expandtab
set autoindent
set fileformat=unix
set hlsearch
set smarttab
set encoding=utf8

" syntax coloring
set t_Co=256
syntax on

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
set relativenumber
set number          
set incsearch
set smartcase
set showmatch
set comments=sl:/*,mb:\ *,elx:\ */
set wildmode=longest:full
set wildmenu
set noswapfile
set backspace=indent,eol,start
"
" color theme in vim
set background=dark
"
" solarized options
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
" colorscheme solarized
let g:solarized_diffmode="high"

if &diff
        colorscheme apprentice 
endif

" no to tabs- http://joshldavis.com/2014/04/05/vim-tab-madness-buffers-vs-tabs/  Solution #1
" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" the working directory is always the one containing the current file
set autochdir

filetype plugin on
filetype indent on

" auto reload vimrc on write
autocmd! bufwritepost .vimrc source %

" hi Folded ctermfg=white
hi Folded ctermbg=236
