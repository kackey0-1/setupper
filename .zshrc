# Path to your oh-my-zsh installation.
# export ZSH=$HOME/.oh-my-zsh
#
# # Look in ~/.oh-my-zsh/themes/
# ZSH_THEME="spaceship"
#
# # Theme settings
# export TERM="xterm-256color"
# SPACESHIP_TIME_SHOW=true
# SPACESHIP_EXEC_TIME_SHOW=true
#
# HIST_STAMPS="yyyy-mm-dd"
#
# # Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# plugins=(git github golang ruby brew chruby)
#
# # User configuration
# export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# source $ZSH/oh-my-zsh.sh
#
# # GAVIN CUSTOM
#
# # HOMEBREW
# export HOMEBREW_NO_ANALYTICS=1
#
# # Ruby
# source /usr/local/share/chruby/chruby.sh
#
# # Node
# source /usr/local/opt/chnode/share/chnode/chnode.sh
#
# # BREWFILE
# export HOMEBREW_BREWFILE=~/Brewfile
# export HOMEBREW_BREWFILE_APPSTORE=0
#
# # GOLANG
# export GOPATH=$HOME/Documents/Development/go
# # DO NOT WRITE CODE IN $GOPATH ... pre mod style
# export PATH=$PATH:$(go env GOPATH)/bin
#
# # PHOTO TAGGING
#
# alias genxmp="cd ~/Pictures/workflow/1_tag/geotag_and_xmp && exiftool -ext RAF -o %d%f.xmp -r ."
#
# # Switch Ruby and Node version - Do this otherwise I'll forget.
# chruby ruby-2.7.1
# chnode 14.4.0
#
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH=$HOME/google-cloud-sdk/bin:$PATH
export PATH=$HOME/dev/flutter/bin:$PATH
export PATH=$HOME/.rvm/bin:$PATH
export PATH=/opt/homebrew/opt/php@7.2/sbin:$PATH
export PATH=/opt/homebrew/opt/php@7.2/bin:$PATH
export PATH="~/.rbenv/shims:/usr/local/bin:$PATH"
eval "$(rbenv init -)"
# Python resources
export HDF5_DIR=/opt/homebrew/Cellar/hdf5/1.12.1
eval "$(pyenv init -)"

# Alias
alias ga="git add"
alias gb="git branch"
alias gc="git checkout"
alias gf="git fetch --all --prune --tags --force --prune-tags"
alias gm="git merge --no-edit --no-ff"
alias gpl="git pull"
alias gps="git push"
alias gs="git status"
alias gsu="status -uno"

alias tm="terraform"
alias tma="terraform apply"
alias tmd="terraform destroy"
alias tmx="tmux"
alias tmxdouble="tmux new-session \; split-window -h"

alias vi="nvim"
alias vim="nvim"
alias view="nvim -R"

