set nocompatible

filetype plugin on
filetype indent on

set autoread
set smarttab
set ruler
set encoding=utf8
set ffs=unix,dos,mac

set expandtab
set tabstop=4
set shiftwidth=4
set textwidth=120

set tags+=~/.vim/systags

set t_Co=256
syntax on

set completeopt=menuone,preview

"filetype plugin on
syntax enable
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
set number
set incsearch
set smartcase
set showmatch
set comments=sl:/*,mb:\ *,elx:\ */
set wildmode=longest:full
set wildmenu
set noswapfile

set pastetoggle=<F2>
:nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> <C-W><C-W>
"nnoremap <C><Tab> <C-W><C-W>
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>
autocmd VimEnter * TlistOpen
autocmd VimEnter * wincmd l
autocmd VimEnter * ConqueTermSplit bash
nnoremap <space> za
vnoremap <space> zf

if bufwinnr(1)
    map < <c-w><
    map > <c-w>>
    map j <c-w>+
    map k <c-w>-
endif
set splitright
set foldmethod=indent
set foldnestmax=2
set nofoldenable

" vundle plugin lst and config
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" git wrapper- :help fugitive for more
Bundle 'tpope/vim-fugitive'

Plugin 'vim-scripts/taglist.vim'

" show directory struction- :help nerdtree
Bundle 'scrooloose/nerdtree'

" nerd tree window fixed 
Bundle 'jistr/vim-nerdtree-tabs'

" Bundle 'klen/python-mode'
Bundle 'hdima/python-syntax'
Plugin 'vim-airline/vim-airline'
Plugin 'davidhalter/jedi-vim'
Plugin 'taylor/vim-zoomwin'
Bundle 'lrvick/Conque-Shell'

call vundle#end()
" airline conf
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" listtag conf
filetype on
" let Tlist_Auto_Open=1
let Tlist_Auto_Highlight_Tag=1
let Tlist_File_Fold_Auto_Close = 1
let Tlist_Exit_OnlyWindow = 1


" nerdtreetabs conf
let g:nerdtree_tabs_open_on_console_startup = 1
let g:nerdtree_tabs_smart_startup_focus=2
let NERDTreeWinSize = 20
" nerdtree conf
" autocmd vimenter * NERDTree

" no to tabs- http://joshldavis.com/2014/04/05/vim-tab-madness-buffers-vs-tabs/  Solution #1
" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>
autocmd BufEnter * lcd %:p:h

" pymode conf
"let g:pymode = 0
"let g:pymode_lint_on_write = 1
"let pymode_rope = 1
