pwd := $(shell pwd -LP)

default: link

# Install into home directory
link: link-vim
	@if [ ! -d ~/.vim/vendor ]; then \
		echo "\n\033[32;1m→ NOTE:\033[0m run ':PlugInstall' in Vim to install plugins."; \
	fi

link-vim:
	ln -sfn "${pwd}" ~/.vim
	ln -sfn "${pwd}/init.vim" ~/.vimrc

.PHONY: link link-vim default

