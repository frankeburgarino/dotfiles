#!/bin/bash

if [ -f "$HOME/.bashrc" ]; then
	rm "$HOME/.bashrc"
fi

if [ -f "$HOME/.bash_aliases" ]; then
	rm "$HOME/.bash_aliases"
fi

if [ ! -d "$HOME/.config/nvim" ]; then
	mkdir "$HOME/.config/nvim"
elif [ -f "$HOME/.config/nvim/init.vim" ]; then
	rm "$HOME/.config/nvim/init.vim"
fi

ln -s "$HOME/.dotfiles/bashrc" "$HOME/.bashrc"

ln -s "$HOME/.dotfiles/bash_aliases" "$HOME/.bash_aliases"

ln -s "$HOME/.dotfiles/init.vim" "$HOME/.config/nvim/init.vim"
