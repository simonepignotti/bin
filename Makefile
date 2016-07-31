.PHONY: all

all: .terminal .nvim .tmux

.terminal:
	curl -fLo ~/.local/share/fonts/ano_pow.ttf --create-dirs \
		https://github.com/powerline/fonts/raw/master/AnonymousPro/Anonymice%20Powerline.ttf
	fc-cache
	./gnterm_profiler.sh

.brew:
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"

.nvim: .brew
	brew update
	brew install neovim/neovim/neovim
	curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	curl -fLo ~/.config/nvim/colors/molokai.vim --create-dirs \
		https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim
	ln -s init.vim ~/.config/nvim/init.vim
	nvim +PlugInstall
	nvim +PlugClean!

.tmux: .brew
	brew update
	brew install tmux
	ln -s tmux.conf ~/.config/tmux/.tmux.conf
	tmux source-file ~/.config/tmux/.tmux.conf

