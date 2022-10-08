"# tyru/caw.vim
" コメントアウトを切り替えるマッピング
" \c でカーソル行をコメントアウト
" 再度 \c でコメントアウトを解除
" 選択してから複数行の \c も可能
nmap \c <Plug>(caw:I:toggle)
vmap \c <Plug>(caw:I:toggle)
" \C でコメントアウトの解除
nmap \C <Plug>(caw:I:uncomment)
vmap \C <Plug>(caw:I:uncomment)

"# Shougo/neocomplcache.vim: 補完を有効にする
let g:neocomplcache_enable_at_startup=1
" 補完に時間がかかってもスキップしない
let g:neocomplcache#skip_auto_completion_time=""

"# t9md/vim-quickhl: <Space>m でカーソル下の単語、もしくは選択した範囲のハイライトを行う
" 再度 <Space>m を行うとカーソル下のハイライトを解除する
" これは複数の単語のハイライトを行う事もできる
" <Space>M で全てのハイライトを解除する
nmap <Space>m <Plug>(quickhl-manual-this)
xmap <Space>m <Plug>(quickhl-manual-this)
nmap <Space>M <Plug>(quickhl-manual-reset)
xmap <Space>M <Plug>(quickhl-manual-reset)

"# Shougo/unite.vim: アウトラインを出力したいバッファで起動
" :Unite outline
" 横に split して開きたい場合
" 幅は -winwidth= で指定
" :Unite file -vertical -winwidth=40

"# osyo-manga/vim-marching: 非同期ではなくて同期処理で補完する
let g:marching_backend = "sync_clang_command"
" オプションの設定
" これは clang のコマンドに渡される
let g:marching_clang_command_option="-std=c++1y"
" neocomplete.vim と併用して使用する場合
" neocomplete.vim を使用すれば自動補完になる
let g:marching_enable_neocomplete = 1
if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.cpp =
    \ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'






