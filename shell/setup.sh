readfile() {[ -r $1 ] && . $1 }

# Golang path
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN


readfile "/usr/local/etc/profile.d/bash_completion.sh"
readfile "$HOME/.git-prompt.sh"
readfile "$HOME/.nvm/nvm.sh"

# nvm
export NVM_DIR="$HOME/.nvm"
readfile "/usr/local/opt/nvm/nvm.sh" # This loads nvm
readfile "/usr/local/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion
