
# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"


# use homebrew package
export PATH="/usr/local/opt/git/bin:$PATH"

# bash_completion.sh
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"


# alias
alias ll='ls -la --color=auto'
alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'
alias sc='screen'
alias ps='ps --sort=start_time'
alias du='du -h -d=1'


# alias translate
alias trans="trans {en=ja} "

# alias chrome 
alias chrome="open -a '/Applications/Google Chrome.app'"
alias search=chrome-search
function chrome-search() { open -a '/Applications/Google Chrome.app' "https://www.google.com/search?q=$1";}

# alias docker
alias dakill='docker ps -aq | xargs docker kill'
alias darmi='docker images -aq | xargs docker rmi' # docker all rmi
alias darm='docker ps -aq | xargs docker rm'      # docker all rm 
alias dps='docker ps --format "{{.ID}}\t{{.Image}}\t{{.Status}}\t{{.Command}}\t{{.RunningFor}}"'
alias dexec='docker exec -it $(dps | peco | cut -f 1) bash'
alias dimg='docker images'

# alias python
alias python="python3"
alias pip="pip3"

# CLI
source ~/.git-prompt.sh
export PS1='[\h@\e[36m\]\w\[\e[m\]]\[\e[1;32m $(__git_ps1 "(%s)") \[\e[0m\]\$ '

#bash config
alias bc='vim /Users/my/.bashrc'
alias bcr='. /Users/my/.bashrc'

# git
# alias git
alias pull='git pull'
alias push='git push'
alias st='git status'
alias sts='git status -sb'
alias stv='git status -v'
alias diff='git diff --name-only | peco | xargs git diff'
alias difff='git diff --word-diff'
alias add='git add'
alias addi='git add -i'
alias cm='git commit'
alias br='git branch'
alias brd='git branch --merged|egrep -v "\*|develop|main|master"|xargs git branch -d'
alias ck='git checkout'
alias submodule-update='git submodule update'

alias stan-diff="git diff develop --name-only | grep '.php' | xargs vendor/bin/phpstan analyse -l max"
alias stan-diff-add="git diff develop --diff-filter=A --name-only | grep '.php' | xargs vendor/bin/phpstan analyse -l max"

# alias gh
alias browse='gh browse'
alias pr='gh pr view --web'
alias pr-create='gh pr create -w'

alias pull-force='git fetch && git reset --hard $(git rev-parse --abbrev-ref --symbolic-full-name @{u})'

alias ckbr='git checkout $(git branch | peco)'
alias ckbrr='git checkout $(git branch -a --sort=-authordate | cut -b 3- | grep -v -- "->" | peco | sed -e "s%remotes/origin/%%")'
alias diff-develop='git diff develop $(git rev-parse --abbrev-ref HEAD) --name-only | peco | xargs git diff develop $(git rev-parse --abbrev-ref HEAD)'
alias brp="git show-branch | grep '*' | grep -v "$(git rev-parse --abbrev-ref HEAD)" | head -n1 | sed 's/.*\[\(.*\)\].*/\1/' | sed 's/[\^~].*//'"
alias diff-file-name='git diff $(brp) $(git rev-parse --abbrev-ref HEAD) --name-only'

