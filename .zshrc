# https://zsh.sourceforge.io/Doc/Release/Options.html
setopt no_beep

# try popd
# avoid duplicated record
setopt auto_pushd
setopt pushd_ignore_dups 

# history
setopt share_history
setopt inc_append_history
setopt hist_ignore_dups
export HISTFILE=~/.zsh_history
export HISTSIZE=100000
export SAVEHIST=100000

# https://ohmyz.sh
# https://ohmyz.sh/#install
# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

alias ga="git add"
alias gb="git branch"
alias gc="git checkout"
alias gf="git fetch --all --prune --tags --force --prune-tags"
alias gl="git log --oneline"
alias gm="git merge --no-edit --no-ff"
alias gpl="git pull"
alias gps="git push"
alias gs="git status"

alias tm="terraform"
alias tma="terraform apply"
alias tmd="terraform destroy"
alias tmx="tmux"
alias tmxdouble="tmux new-session \; split-window -h"

alias vi="nvim"
alias vim="nvim"
alias view="nvim -R"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

