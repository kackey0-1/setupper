# For Initial Setup local machine

```bash
brew install deno
brew install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

./initializer.sh
# ln -s `pwd`/.config/nvim ~/.config/nvim
# ln -s `pwd`/.zshrc ~/.zshrc

## coc.nvimがclangdに接続するため、coc-clangdというプラグインが必要
## 以下のcommandをvimを開いて実行
:CocInstall coc-clangd 
:CocInstall coc-rls
```

## For vim/nvim Instruction
Learn vim with Game (here)[https://vim-adventures.com/]

- Execution
  ```bash
  # commandline execution in nvim/vim
  :!python3 test.py 

  # execute previous command
  :!!
  ```

- Replace
  ```bash
  # Replace words (apply for all)
  :/%s/<before>/<after>/g
  
  # Replace words (apply for all)
  :/%s/<before>/<after>/gc

  # delete word on the cursor
  dw
  ```

## nvim Plugin
```bash
# install plugin
:PlugInstall
```

### [NERDTree](https://github.com/preservim/nerdtree)
```bash
:NERDTree
```

### About todo.txt PlugIn

```bash
mkdir $HOME/.todo
touch $HOME/.todo/config
cp -n /opt/homebrew/opt/todo-txt/todo.cfg ~/.todo.cfg
```

- todo.txt plugin
  - [todo.txt](https://github.com/callmekohei/vim-todoedit/blob/master/doc/todoedit.txt)
  - [todo.txt-cli](https://github.com/todotxt/todo.txt-cli)

```md
- Done: <space> d
- Sort by Due: <space> s d
- Open Folded Task: <space> <space>
```

### FuzzyFinder
### vim-fugitive
### vim-gitgutter
### vim-comentary
### vim-polyglot
### coc-nvim
### vim-go

## For Tmux Instruction

## For Zsh Instruction

### Zsh History
```zsh
# search history
ctrl r
```

### Setup Oh My Zsh
```zsh
# install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# applied pre setting to current
cat ~/.zshrc.pre-oh-my-zsh >> ~/.zshrc
```


