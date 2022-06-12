# For Initial Setup local machine

```bash
ln -s `pwd`/.config/nvim ~/.config/nvim
```

## For vim/nvim instruction
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

