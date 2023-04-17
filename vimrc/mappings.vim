" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %
nnoremap ; :
" shortcuts
set pastetoggle=<F2>
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>

" disable <Tab> on nerdtree window
autocmd FileType nerdtree noremap <buffer> <Tab> <nop>
autocmd VimEnter * NERDTree | wincmd p

nmap <silent> <S-Up> :wincmd k<CR>
nmap <silent> <S-Down> :wincmd j<CR>
nmap <silent> <S-Left> :wincmd h<CR>
nmap <silent> <S-Right> :wincmd l<CR>

" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>

nnoremap <C-B> :TagbarOpen<CR>

nnoremap <F3> <ESC>:NERDTreeToggle<CR>
nnoremap <F4> <ESC>:TagbarToggle<CR>
nnoremap <F6> :source ~/.vimrc<CR>

nnoremap <space> za
vnoremap <space> zf

nnoremap <NUL> zi
vnoremap <NUL> zi

nnoremap <leader>b  <ESC>:IpdbBreakPointBelow<CR>
nnoremap <leader>B  <ESC>:IpdbBreakPointAbove<CR>

map <C-Q> <ESC>:Bclose<CR>

" ctrl + s save
silent !stty -ixon > /dev/null 2>/dev/null
imap <C-S> <ESC>:w<CR>
vmap <C-S> <ESC>:w<CR>
nmap <C-S> :w<CR>

:nnoremap <CR> :nohlsearch<CR><CR>

nnoremap <C-E> <Esc>:SyntasticCheck<CR>

nnoremap <F7> <Esc>:HardTimeToggle<CR>

nmap <silent> <C-_> <Plug>(pydocstring)

map z/ <Plug>(incsearch-fuzzy-/)
map z? <Plug>(incsearch-fuzzy-?)
map zg/ <Plug>(incsearch-fuzzy-stay)

" invoke with '-'
nmap  -  <Plug>(choosewin)

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

:command! IpdbBreakPointBelow :normal oimport ipdb; ipdb.set_trace()<ESC>
:command! IpdbBreakPointAbove :normal Oimport ipdb; ipdb.set_trace()<ESC>

:command! S :Subvert

:command! Q :q
