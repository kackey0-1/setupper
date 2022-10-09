set shiftwidth=4
set tabstop=4
set expandtab
set textwidth=0
set autoindent
set hlsearch
set clipboard=unnamed
set number
set wrap
nnoremap j gj
nnoremap k gk
syntax on

call plug#begin()
Plug 'ntk148v/vim-horizon'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'tfnico/vim-gradle'

"# todo.txt plugin start -> nvim-todo.vim
Plug 'callmekohei/vim-todoedit'
Plug 'Shougo/deoplete.nvim'
Plug 'callmekohei/deoplete-todoedit'
Plug 'thinca/vim-partedit'
"# todo.txt plugin end

"# lang plugins start
" https://osyo-manga.hatenadiary.org/entry/20131219/1387465034
Plug 'tyru/caw.vim'
Plug 't9md/vim-quickhl'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plugins reference for code completion.
" // https://github.com/Shougo/ddc.vim
" // https://zenn.dev/matsui54/articles/2021-09-03-ddc-lsp
" clang: https://zenn.dev/urawa72/articles/07c75d8da8bab500f12a
" rust : https://zenn.dev/yuucu/articles/vimrc-rust-yuucu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'neoclide/coc.nvim'
Plug 'rust-lang/rust.vim'
"# lang plugins end
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

let splt = split(glob($HOME . "/.config/nvim/configs/" . "*.vim"))
for file in splt
    " echo "load " . file
    execute 'source' file
endfor

