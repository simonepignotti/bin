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

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
	alias dir='dir --color=auto'
	alias vdir='vdir --color=auto'
	alias grep='grep --color=auto'
	alias fgrep='fgrep --color=auto'
	alias ffgrep='c && ff | xargs grep --color'
	alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ff='find . -type f'
alias fd='find . -type d'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias c='clear'

# git

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
alias gcl='git clean -fxd'
alias gl='git log'
