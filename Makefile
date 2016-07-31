.PHONY: all

all: .make.nvim .make.tmux .make.bash

.make.terminal:
	curl -fLo ~/.local/share/fonts/anonymous_pro_powerline.ttf --create-dirs \
		https://github.com/powerline/fonts/raw/master/AnonymousPro/Anonymice%20Powerline.ttf
	fc-cache
	./gnterm_profiler.sh
	touch $@

.make.brew:
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
	touch $@

.make.nvim: .make.brew
	brew install neovim/neovim/neovim
	curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	curl -fLo ~/.config/nvim/colors/monokai.vim --create-dirs \
		https://raw.githubusercontent.com/crusoexia/vim-monokai/master/colors/monokai.vim
	ln -sf $(HOME)/bin/.nvim.conf $(HOME)/.config/nvim/init.vim
	nvim +PlugInstall
	touch $@

.make.tmux: .make.brew
	brew install tmux
	ln -sf $(HOME)/bin/.tmux.conf $(HOME)/.tmux.conf
	touch $@

.make.bash:
	echo "source $$HOME/bin/.bashrc" >> $(HOME)/.bashrc
	touch $@
