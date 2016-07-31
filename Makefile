.PHONY: all

all: .terminal .nvim .tmux

.terminal:
	curl -fLo ~/.local/share/fonts/anonymous_pro_powerline.ttf --create-dirs \
		https://github.com/powerline/fonts/raw/master/AnonymousPro/Anonymice%20Powerline.ttf
	fc-cache
	./gnterm_profiler.sh
	touch .terminal

.brew:
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
	touch .brew

.nvim: .brew
	brew install neovim/neovim/neovim
	curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	curl -fLo ~/.config/nvim/colors/molokai.vim --create-dirs \
		https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim
	ln -sf $(CURDIR)/nvim.conf ~/.config/nvim/init.vim
	nvim +PlugInstall
	touch .nvim

.tmux: .brew
	brew install tmux
	mkdir -p ~/.config/tmux/
	ln -sf $(CURDIR)/tmux.conf ~/.config/tmux/.tmux.conf
	tmux source-file ~/.config/tmux/.tmux.conf
	touch .tmux
