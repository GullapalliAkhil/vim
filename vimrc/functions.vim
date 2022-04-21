" Yaml helper
autocmd FileType yaml call SetYamlOptions()

function! SetYamlOptions()
    setlocal ai ts=2 sw=2 et
    set foldmethod=indent
endfunction

" Go helper
autocmd FileType go call SetGoOptions()

function! SetGoOptions()
    set foldmethod=syntax
endfunction

" JSON helper
autocmd FileType json call SetJsonOptions()

function! SetJsonOptions()
    set foldmethod=syntax
endfunction

