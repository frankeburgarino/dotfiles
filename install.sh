#!/bin/bash

if [ -f "$HOME/.bashrc" ]; then
	rm "$HOME/.bashrc"
fi

if [ -f "$HOME/.bash_aliases" ]; then
	rm "$HOME/.bash_aliases"
fi

if [ -d "$HOME/.config/nvim" ]; then
	rm -r "$HOME/.config/nvim"
fi

ln -s "$HOME/.dotfiles/bashrc" "$HOME/.bashrc"

ln -s "$HOME/.dotfiles/bash_aliases" "$HOME/.bash_aliases"

ln -s "$HOME/.dotfiles/nvim" "$HOME/.config/nvim"
