# CUSTOM .bashrc

_BIN_DIR="$HOME/bin"

source ${_BIN_DIR}/bash-sensible/sensible.bash
source $HOME/bin/.bash_aliases

# prepend
for d in \
	"${_BIN_DIR}" \
	"${_BIN_DIR}/tabulator/bin" \
	"${_BIN_DIR}/dictionaries" \
	"${_BIN_DIR}/git" \
	"${_BIN_DIR}/grep" \
	; do
	if [ -d $d ]; then
		export PATH="$d:$PATH"
		if [ $d != $_BIN_DIR ] && [ -f $d/.bashrc ]; then
			. "$d/.bashrc"
		fi

		if [ -f $d/.aliases ]; then
			. "$d/.aliases"
		fi
	fi
done


# nvim as default editor for git
export VISUAL=nvim
export EDITOR="$VISUAL"

# default languages
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
