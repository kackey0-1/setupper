# For Initial Setup local machine

```bash
ln -s `pwd`/.config/nvim ~/.config/nvim
ln -s `pwd`/.zshrc ~/.zshrc
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



