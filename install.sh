#!/bin/bash

if [ -L "$HOME/.bashrc" ]; then
	rm "$HOME/.bashrc"
fi

if [ -L "$HOME/.bash_aliases" ]; then
	rm "$HOME/.bash_aliases"
fi

if [ ! -d "$HOME/.config" ]; then
	mkdir "$HOME/.config"
fi

if [ -L "$HOME/.config/alacritty" ]; then
	rm -r "$HOME/.config/alacritty"
fi

if [ -L "$HOME/.config/fastfetch" ]; then
	rm -r "$HOME/.config/fastfetch"
fi

if [ -L "$HOME/.config/nvim" ]; then
	rm -r "$HOME/.config/nvim"
fi

if command -v dnf >/dev/null 2>&1; then
	sudo dnf install -y btop duf fastfetch gcc git neovim ripgrep tmux
elif command -v apt >/dev/null 2>&1; then
	sudo apt update -y
	sudo apt install -y btop duf fastfetch gcc git neovim ripgrep tmux
fi


ln -s "$HOME/.dotfiles/bash/bashrc" "$HOME/.bashrc"

ln -s "$HOME/.dotfiles/bash/bash_aliases" "$HOME/.bash_aliases"

ln -s "$HOME/.dotfiles/alacritty" "$HOME/.config/alacritty"

ln -s "$HOME/.dotfiles/fastfetch" "$HOME/.config/fastfetch"

ln -s "$HOME/.dotfiles/nvim" "$HOME/.config/nvim"
