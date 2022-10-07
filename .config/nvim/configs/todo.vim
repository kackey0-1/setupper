" todo.txt
" set runtimepath+=/PATH/TO/vim-partedit
let g:maplocalleader="\<Space>"
let g:doneTaskFile=environ()['HOME'] . "/done.txt"
set foldtext=FoldCCtext()
set foldcolumn=5
set fillchars=vert:\|
set foldmethod=marker
hi Folded gui=bold term=standout ctermbg=LightGrey ctermfg=DarkBlue guibg=Grey30 guifg=Grey80
hi FoldColumn gui=bold term=standout ctermbg=LightGrey ctermfg=DarkBlue guibg=Grey guifg=DarkBlue

