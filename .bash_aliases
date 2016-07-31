# cd

alias cd-='cd -'
alias cd..='cd ..'
alias cd...='cd ../..'
alias cd....='cd ../../..'
alias cd.....='cd ../../../..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias cg='cd ~/github'
alias cdd='cd ~/Dropbox'
alias cgm='cd ~/github/my'

# misc

alias ff='find . -type f'
alias fd='find . -type d'

alias grep='grep --color=auto'
alias ffgrep='c && ff | xargs grep --color'

alias c='clear'

# git

alias gur='_git_update_repos'

alias ga='git add'
alias gb='git branch'
alias gc='git checkout'
alias gba='git branch --all'
alias gs='git status'
alias gt='git commit'
alias gf='git diff --cached'
alias gpull='git pull --rebase'
alias gpush='git push'
alias gm='git mv'
alias gcl='git clean -fxd .'
alias gl='git log'
