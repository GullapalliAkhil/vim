" completion popup menu
" set completeopt=menuone,preview
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

" Used to debug gopls
" let g:go_debug=['lsp']

" Disable gopls
" let g:go_gopls_enabled = 0
au BufRead,BufNewFile *.go set filetype=go
