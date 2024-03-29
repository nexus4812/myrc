DIR=$(dirname $(readlink  ~/.zshrc))
. $DIR/setup.sh
. $DIR/slim.sh
. $DIR/package_alias.sh

# zshrc config
alias zs='vim ~/Documents/myrc/shell/$(ls -1  ~/Documents/myrc/shell/ | peco)'
alias zsr='source ~/.zshrc'

# prompt option
setopt prompt_subst
TMOUT=1
TRAPALRM() {zle reset-prompt}
RPROMPT="%F{white} %D{%Y-%m-%d %H:%M:%S} %f"
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto
setopt PROMPT_SUBST ; PS1='%F{green}%n@%m%f: %F{cyan}%~%f %F{red}$(__git_ps1 "(%s)")%f
\$ '

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/my/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
