readfile() {[ -r $1 ] && . $1 }

readfile "/usr/local/etc/profile.d/bash_completion.sh"
readfile "$HOME/.git-prompt.sh"
readfile "$HOME/.nvm/nvm.sh"