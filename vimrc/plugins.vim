call plug#begin('~/.vim/plugged')

" Completion LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" git wrapper- :help fugitive for more
Plug 'tpope/vim-fugitive'

" alternative to taglist - tagbar
Plug 'majutsushi/tagbar'

" show directory struction- :help nerdtree
Plug 'scrooloose/nerdtree'

" python syntax highlighting
Plug 'hdima/python-syntax'

" poweline alternative
Plug 'vim-airline/vim-airline'

" fullsize a window <C-w>o
Plug 'taylor/vim-zoomwin'

" fold accurately python
Plug 'tmhedberg/SimpylFold'

" proper indentation 
Plug 'vim-scripts/indentpython.vim'

" pylint, pep8 runtime
Plug 'scrooloose/syntastic'

" search for files
Plug 'ctrlpvim/ctrlp.vim'

" comment/uncomment
Plug 'vim-scripts/tComment'

" custom modes like insert, visual
Plug 'vim-scripts/tinymode.vim'

" bclose to close buff without closing window
Plug 'rbgrouleff/bclose.vim'

" indent object
Plug 'michaeljsmith/vim-indent-object'

" Indent line
" Plug "Yggdroot/indentLine"

" auto docstring python
Plug 'heavenshell/vim-pydocstring', { 'do': 'make install', 'for': 'python' }

" substitute multiple variants of a word 
Plug 'tpope/vim-abolish'

" incsearch.vim incrementally highlights ALL pattern matches unlike default 'incsearch'.
Plug 'haya14busa/incsearch.vim'

" GO programming plugin
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

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
let g:tagbar_type_go = {
            \ 'ctagstype' : 'go',
            \ 'kinds'     : [
                \ 'p:package',
                \ 'i:imports:1',
                \ 'c:constants',
                \ 'v:variables',
                \ 't:types',
                \ 'n:interfaces',
                \ 'w:fields',
                \ 'e:embedded',
                \ 'm:methods',
                \ 'r:constructor',
                \ 'f:functions'
            \ ],
            \ 'sro' : '.',
            \ 'kind2scope' : {
                \ 't' : 'ctype',
                \ 'n' : 'ntype'
            \ },
            \ 'scope2kind' : {
                \ 'ctype' : 't',
                \ 'ntype' : 'n'
            \ },
            \ 'ctagsbin'  : 'gotags',
            \ 'ctagsargs' : '-sort -silent'
            \ }
let g:tagbar_autoclose_netrw = 1
let g:tagbar_autofocus = 1
let g:tagbar_autoclose = 1

" python-syntax conf
let python_highlight_all = 1

" airline conf
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" syntastic conf
let g:syntastic_python_checkers = ['pep8', 'pylint', 'flake8', 'pydocstyle', 'nulint']

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" line length ignore
let g:syntastic_python_flake8_args='--ignore=E501'
let g:syntastic_python_pep8_args='--ignore=E501'
let g:syntastic_python_pylint_args='--disable=line-too-long,abstract-method,attribute-defined-outside-init,no-member,logging-not-lazy,relative-import,too-many-arguments'
let g:syntastic_python_pydocstyle_args='--ignore=D210,D400,D213,D205,D202,D203,D208,D403,D300'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_loc_list_height=5
let g:syntastic_check_on_open = 0
let g:syntastic_aggregate_errors = 1

" SimpylFold conf
let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_import = 1

" ctrlp ignore
set wildignore+=*.pyc     " MacOSX/Linux
set wildignore+=*.html     " MacOSX/Linux

" tinymode conf - resize current window mode
call tinymode#EnterMap("winsize", "ws", "") 
call tinymode#Map("winsize", "j", "wincmd +") 
call tinymode#Map("winsize", "k", "wincmd -") 
call tinymode#Map("winsize", "h", "wincmd <") 
call tinymode#Map("winsize", "l", "wincmd >")
call tinymode#ModeMsg("winsize", "--WINSIZE--") 
call tinymode#ModeArg("winsize", "timeoutlen", 5000) 

" line indent
let g:indentLine_color_tty_dark = 4
let g:indentLine_conceallevel = 1
let g:indentLine_char = '┊'

" pydocstring
let g:pydocstring_templates_path = "$WORKSPACE/vim/pydocstring/"
let g:pydocstring_templates_dir = "$WORKSPACE/vim/pydocstring/"

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
