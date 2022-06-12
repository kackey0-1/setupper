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
call plug#end()

let NERDTreeShowHidden=1
" Start NERDTree when VIM is started without file arguments.
autocmd StdinRead * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" if you don't set this option, this color might not correct
" set termguicolors
" colorscheme horizon
" lightline
" let g:lightline={}
" let g:lightline.colorscheme='horizon'

