set shiftwidth=4
set tabstop=4
set expandtab
set textwidth=0
set autoindent
set hlsearch
set clipboard=unnamed
syntax on

call plug#begin()
Plug 'ntk148v/vim-horizon'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'tfnico/vim-gradle'
Plug 'callmekohei/vim-todoedit'
Plug 'Shougo/deoplete.nvim'
Plug 'callmekohei/deoplete-todoedit'
Plug 'thinca/vim-partedit'
call plug#end()

let NERDTreeShowHidden=1
" Start NERDTree when VIM is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

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

" if you don't set this option, this color might not correct
" set termguicolors
" colorscheme horizon
" lightline
" let g:lightline={}
" let g:lightline.colorscheme='horizon'


