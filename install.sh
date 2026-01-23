#!/bin/bash

if [ -e "$HOME/.bashrc" ]; then
	rm "$HOME/.bashrc"
fi

if [ -e "$HOME/.bash_aliases" ]; then
	rm "$HOME/.bash_aliases"
fi

if [ ! -d "$HOME/.config" ]; then
	mkdir "$HOME/.config"
fi

if [ -e "$HOME/.config/alacritty" ]; then
	rm -r "$HOME/.config/alacritty"
fi

if [ -e "$HOME/.config/fastfetch" ]; then
	rm -r "$HOME/.config/fastfetch"
fi

if [ -e "$HOME/.config/nvim" ]; then
	rm -r "$HOME/.config/nvim"
fi

if [ -e "$HOME/.config/tmux" ]; then
	rm -r "$HOME/.config/tmux"
fi

if [ -e "$HOME/.config/rofi" ]; then
	rm -r "$HOME/.config/rofi"
fi

if command -v dnf >/dev/null 2>&1; then
	sudo dnf install -y btop duf fastfetch gcc git neovim ripgrep rofi tmux
elif command -v apt >/dev/null 2>&1; then
	sudo apt update -y
	sudo apt install -y btop duf fastfetch gcc git neovim ripgrep rofi tmux
fi


ln -s "$HOME/.dotfiles/bash/bashrc" "$HOME/.bashrc"

ln -s "$HOME/.dotfiles/bash/bash_aliases" "$HOME/.bash_aliases"

ln -s "$HOME/.dotfiles/alacritty" "$HOME/.config/alacritty"

ln -s "$HOME/.dotfiles/fastfetch" "$HOME/.config/fastfetch"

ln -s "$HOME/.dotfiles/nvim" "$HOME/.config/nvim"

ln -s "$HOME/.dotfiles/rofi" "$HOME/.config/rofi"

ln -s "$HOME/.dotfiles/tmux" "$HOME/.config/tmux"
