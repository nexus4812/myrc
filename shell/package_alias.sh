# alias lf
if type "lf" > /dev/null 2>&1; then
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        if [ -d "$dir" ]; then
            if [ "$dir" != "$(pwd)" ]; then
                cd "$dir"
            fi
        fi
    fi
}
fi

# alias brew
if type "brew" > /dev/null 2>&1; then
# use homebrew git package
export PATH="/usr/local/opt/git/bin:$PATH"
alias brew-du='brew leaves | xargs brew info | grep "*"'
alias brew-l='brew leaves'
fi

# alias tig
if type "tig" > /dev/null 2>&1; then
alias ts='tig status'
alias tbr='tig refs'
fi

# alias git
if type "git" > /dev/null 2>&1; then
alias g='git '
alias gll='git log --graph --pretty=oneline'
alias gdiff='git diff --name-only | peco | xargs git diff'
alias sts='git status -sb'
alias add='git add'
alias co='git commit'
alias br='git branch'
alias brr='git branch -r'
alias brd='git branch --merged|egrep -v "\*|develop|main|master"|xargs git branch -d'
alias ch='git checkout'
alias chbr='git checkout $(git branch | peco)'
alias chbrr='git checkout $(git branch -a --sort=-authordate | cut -b 3- | grep -v -- "->" | peco | sed -e "s%remotes/origin/%%")'
alias pull-force='git fetch && git reset --hard $(git rev-parse --abbrev-ref --symbolic-full-name @{u})'
alias ckbr='git checkout $(git branch | peco)'
alias ckbrr='git checkout $(git branch -a --sort=-authordate | cut -b 3- | grep -v -- "->" | peco | sed -e "s%remotes/origin/%%")'
alias diff-develop='git diff develop $(git rev-parse --abbrev-ref HEAD) --name-only | peco | xargs git diff develop $(git rev-parse --abbrev-ref HEAD)'
alias brp="git show-branch | grep '*' | grep -v "$(git rev-parse --abbrev-ref HEAD)" | head -n1 | sed 's/.*\[\(.*\)\].*/\1/' | sed 's/[\^~].*//'"
alias diff-file-name='git diff $(brp) $(git rev-parse --abbrev-ref HEAD) --name-only'
# phpstan
alias stan-diff="git diff develop --name-only | grep '.php' | xargs vendor/bin/phpstan analyse -l max"
alias stan-diff-add="git diff develop --diff-filter=A --name-only | grep '.php' | xargs vendor/bin/phpstan analyse -l max"
fi

# alias gh
if type "gh" > /dev/null 2>&1; then
alias browse='gh browse'
alias pr='gh pr view --web'
alias pr-create='gh pr create -w'
fi

# alias translate
if type "trans" > /dev/null 2>&1; then
alias tra="trans {en=ja} "
fi

# alias chrome 
alias chrome="open -a '/Applications/Google Chrome.app'"
alias search=chrome-search
function chrome-search() { open -a '/Applications/Google Chrome.app' "https://www.google.com/search?q=$1";}

# alias docker
if type "docker" > /dev/null 2>&1; then
alias dakill='docker ps -aq | xargs docker kill'
alias darmi='docker images -aq | xargs docker rmi' # docker all rmi
alias darm='docker ps -aq | xargs docker rm'      # docker all rm 
alias dps='docker ps --format "{{.ID}}\t{{.Image}}\t{{.Status}}\t{{.Command}}\t{{.RunningFor}}"'
alias dexec='docker exec -it $(dps | peco | cut -f 1) bash'
alias dimg='docker images'
fi

# alias python
if type "python3" > /dev/null 2>&1; then
alias python="python3"
alias pip="pip3"
fi

# alias peco
if type "peco" > /dev/null 2>&1; then
alias cdpj='cd ~/Documents/$(ls -1 ~/Documents | peco)'
fi