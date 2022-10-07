set shiftwidth=4
set tabstop=4
set expandtab
set textwidth=0
set autoindent
set hlsearch
set clipboard=unnamed
set number
syntax on

call plug#begin()
    Plug 'ntk148v/vim-horizon'
    Plug 'preservim/nerdtree'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'sheerun/vim-polyglot'
    Plug 'tfnico/vim-gradle'
    " todo.txt plugin start -> nvim-todo.vim
    Plug 'callmekohei/vim-todoedit'
    Plug 'Shougo/deoplete.nvim'
    Plug 'callmekohei/deoplete-todoedit'
    Plug 'thinca/vim-partedit'
    " todo.txt plugin end

    " clang plugin start
    " https://osyo-manga.hatenadiary.org/entry/20131219/1387465034
    Plug 'tyru/caw.vim'
    Plug 'Shougo/neocomplete.vim'
    " clang plugin end
call plug#end()

let NERDTreeShowHidden=1
" Start NERDTree when VIM is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" if you don't set this option, this color might not correct
" set termguicolors
" colorscheme horizon
" lightline
" let g:lightline={}
" let g:lightline.colorscheme='horizon'

let splt = split(glob("~/.config/nvim/configs/" . "*.vim"))
for file in splt
    " echo "load " . file
    execute 'source' file
endfor

