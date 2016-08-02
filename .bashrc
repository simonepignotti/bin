
source $HOME/bin/bash-sensible/sensible.bash
source $HOME/bin/.bash_aliases

# nvim as default editor for git
export VISUAL=nvim
export EDITOR="$VISUAL"
export TERM="screen-256color"

# default languages
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PATH="$HOME/bin:$HOME/.linuxbrew/bin:$PATH:$HOME/anaconda3/bin"
export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"
