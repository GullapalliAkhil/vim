" Put coding lines in every py file as soon as you create it 
if has("autocmd")
augroup content
autocmd BufNewFile *.py
   \ 0put = '# -*- coding: utf-8 -*-' |
   \ norm gg19jf]
augroup END
endif


