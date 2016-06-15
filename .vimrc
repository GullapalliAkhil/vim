" Some links-
" https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/
" http://www.farseer.cn/config/2013/08/02/replace-deprecated-vim-plugins-with-modern-alternatives/ 

set nocompatible

filetype plugin on
filetype indent on

" works in gvim only
set autoread

" auto reload vimrc on write
autocmd! bufwritepost .vimrc source %

" PEP8 indentation
set tabstop=4
set softtabstop=4
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

" completion popup menu
set completeopt=menuone,preview

syntax enable
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

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %
nnoremap ; :
" shortcuts
set pastetoggle=<F2>
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>

" disable <Tab> on nerdtree window
autocmd FileType nerdtree noremap <buffer> <Tab> <nop>

" nnoremap <C-S-Tab> <C-W><C-W>
nnoremap <F3> <ESC>:NERDTreeTabsToggle<CR>
nnoremap <F4> <ESC>:TagbarToggle<CR>
nnoremap <F5> <ESC>:VimShellPop -toggle<CR>
nnoremap <F6> :source ~/.vimrc<CR>

nnoremap <space> za
vnoremap <space> zf

map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

:command! IpdbBreakPointBelow :normal oimport ipdb; ipdb.set_trace()<ESC>
:command! IpdbBreakPointAbove :normal Oimport ipdb; ipdb.set_trace()<ESC>

nnoremap <leader>b  <ESC>:IpdbBreakPointBelow<CR>
nnoremap <leader>B  <ESC>:IpdbBreakPointAbove<CR>

imap <C-Q> <ESC>:Bclose<CR>
vmap <C-Q> <ESC>:Bclose<CR>
nmap <C-Q> :Bclose<CR>


imap <C-S> <ESC>:w<CR>
vmap <C-S> <ESC>:w<CR>
nmap <C-S> :w<CR>

:command! Q :q
:nnoremap <CR> :nohlsearch<CR><CR>

" new window location on split 
set splitright
set splitbelow

" vundle plugin lst and config
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" git wrapper- :help fugitive for more
Bundle 'tpope/vim-fugitive'

" alternative to taglist - tagbar
Bundle 'majutsushi/tagbar'

" show directory struction- :help nerdtree
Bundle 'scrooloose/nerdtree'

" nerd tree window fixed 
Bundle "jistr/vim-nerdtree-tabs"

" python syntax highlighting
Bundle 'hdima/python-syntax'

" poweline alternative
Plugin 'vim-airline/vim-airline'

" fullsize a window <C-w>o
Plugin 'taylor/vim-zoomwin'

" dependency of vimshell
Plugin 'Shougo/vimproc.vim'

" shell to run commands i.e. bash, python
Plugin 'Shougo/vimshell.vim'

" fold accurately python
Plugin 'tmhedberg/SimpylFold'

" proper indentation 
Plugin 'vim-scripts/indentpython.vim'

" completes code before writing
Bundle 'Valloric/YouCompleteMe'

" pylint, pep8 runtime
Plugin 'scrooloose/syntastic'

" search for files
Plugin 'ctrlpvim/ctrlp.vim'

" comment/uncomment
Plugin 'vim-scripts/tComment'

" refactoring code
Plugin 'python-rope/ropevim'

" custom modes like insert, visual
Plugin 'vim-scripts/tinymode.vim'

" bclose to close buff without closing window
Plugin 'rbgrouleff/bclose.vim'

" hard vim
Bundle "takac/vim-hardtime"

" surround.vim
Bundle "tpope/vim-surround"

" indent object
Bundle "michaeljsmith/vim-indent-object"

" Indent line
Bundle "Yggdroot/indentLine"

" stupid easy motion
" Bundle "joequery/Stupid-EasyMotion"
Bundle "easymotion/vim-easymotion"

" ag search, grep alter
Bundle "rking/ag.vim"

" auto docstring python
Bundle "heavenshell/vim-pydocstring"
call vundle#end()

" hi Folded ctermfg=white
hi Folded ctermbg=236
" All plugin confs-

" airline conf
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" nerdtreetabs conf
let g:nerdtree_tabs_open_on_console_startup = 1
let g:nerdtree_tabs_smart_startup_focus=2
let NERDTreeWinSize = 20
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
let g:nerdtree_tabs_startup_cd = 1

" vimshell conf
let g:vimshell_popup_height = 20
let g:vimshell_enable_smart_case   = 1
let g:vimshell_prompt              = '➤  '
let g:vimshell_temporary_directory = "~/tmp/vimshell"
map <C-l>           <Plug>(vimshell_clear)

" Simplyfold conf
let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_import = 1

" python-syntax conf
let python_highlight_all = 1

" YouCompleteMe conf
let g:ycm_autoclose_preview_window_after_completion=1

" syntastic conf
let g:syntastic_python_checkers = ['pylint', 'pep8']

" line length ignore
let g:syntastic_python_checker_args='--ignore=E501'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1

" Ag conf 
let g:ag_working_path_mode="r"

" tinymode conf - resize current window mode
call tinymode#EnterMap("winsize", "ws", "") 
call tinymode#Map("winsize", "j", "wincmd +") 
call tinymode#Map("winsize", "k", "wincmd -") 
call tinymode#Map("winsize", "h", "wincmd <") 
call tinymode#Map("winsize", "l", "wincmd >")
call tinymode#ModeMsg("winsize", "--WINSIZE--") 
call tinymode#ModeArg("winsize", "timeoutlen", 5000) 

" auto start hardtime vim
let g:hardtime_default_on = 1
let g:list_of_insert_keys = []
let g:list_of_normal_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_visual_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]

let g:hardtime_ignore_buffer_patterns = [ "CustomPatt[ae]rn", "NERD.*" ]
let g:hardtime_ignore_quickfix = 1
let g:hardtime_showmsg = 1

nnoremap <F7> <Esc>:HardTimeToggle<CR>
let g:HardMode_level='wannabe'

" line indent
let g:indentLine_color_tty_dark = 4
let g:indentLine_conceallevel = 1
let g:indentLine_char = '┊'

" pydocstring map
nmap <silent> <C-_> <Plug>(pydocstring)

" tagbar conf
let g:tagbar_type_vimwiki = {
            \ 'ctagstype' : 'wiki',
            \ 'kinds'     : [
            \ 'h:headers'
            \ ]
            \ }
let g:tagbar_type_mkd= {
            \ 'ctagstype' : 'md',
            \ 'kinds' : [
            \ 'h:headings'
            \ ],
            \ 'sort' : 0,
            \ }
let g:tagbar_type_css= {
            \ 'ctagstype' : 'css',
            \ 'kinds' : [
            \ 'c:classes',
            \ 'i:ids',
            \ 't:tags',
            \ 'm:media',
            \ 'f:fonts',
            \ 'k:keyframes'
            \ ],
            \ 'sort' : 0,
            \ }
let g:tagbar_type_html= {
            \ 'ctagstype' : 'html',
            \ 'kinds'     : [
            \ 'i:ids',
            \ 'c:classes',
            \ ]
            \ }
let g:tagbar_type_vhdl = {
            \ 'ctagstype': 'vhdl',
            \ 'kinds' : [
            \'d:prototypes',
            \'b:package bodies',
            \'e:entities',
            \'a:architectures',
            \'t:types',
            \'p:processes',
            \'f:functions',
            \'r:procedures',
            \'c:constants',
            \'T:subtypes',
            \'r:records',
            \'C:components',
            \'P:packages',
            \'l:locals'
            \]
            \}

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



" source codes-

" python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF
