# OH-MY-ZSH
export ZSH="/Users/victorshinya/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting zsh-autocomplete)

source $ZSH/oh-my-zsh.sh

# Go
export GOPATH=$HOME/Developer/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

# Node
export NVM_DIR="/Users/victorshinya/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
