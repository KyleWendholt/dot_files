#! /bin/bash
# This script will configure a new machine for use with personal dotfiles.

echo "Setting up new machine..."

echo "Which distro are you using?
1. Arch
2. Ubuntu
3. Fedora"

read distro

echo "Installing necessary packages..."

if [[ "$distro" = "1" ]]; then
	sudo pacman -Syu
	sudo pacman -S starship ttf-firacode-nerd git nvim tmux lazygit zsh fzf ripgrep fd
fi
if [[ "$distro" = "2" ]]; then
	sudo apt update
	sudo apt upgrade
	sudo apt install starship git neovim tmux zsh fzf ripgrep fd-find
	curl -fl0 https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/FiraCode/Regular/FiraCodeNerdFont-Regular.ttf -o ~/.local/share/fonts/FiraCodeNerdFont-Regular.ttf
	curl -fl0 https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/FiraCode/Bold/FiraCodeNerdFont-Bold.ttf -o ~/.local/share/fonts/FiraCodeNerdFont-Bold.ttf
fi
if [[ "$distro" = "3" ]]; then
	sudo dnf update
	sudo dnf install starship git neovim tmux zsh fzf ripgrep fd-find
	curl -fl0 https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/FiraCode/Regular/FiraCodeNerdFont-Regular.ttf -o ~/.local/share/fonts/FiraCodeNerdFont-Regular.ttf
	curl -fl0 https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/FiraCode/Bold/FiraCodeNerdFont-Bold.ttf -o ~/.local/share/fonts/FiraCodeNerdFont-Bold.ttf
fi

echo "Setting up dotfiles..."

git clone https://github.com/KyleWendholt/kickstart.nvim.git ~/.config/nvim

git clone https://github.com/KyleWendholt/dot_files.git ~/.dot_files

cp ~/cheatcheat.md ~/Documents/cheatcheat.md

cp ~/.dot_files/.zshrc ~/.zshrc

cp ~/.dot_files/.tmux.conf ~/tmux/tmux.conf

cp ~/.dot_files/alacritty.toml ~/.config/alacritty/alacritty.toml

echo "Is this a work machine? (y/n)"

read work

if [[ "$work" = "y" ]]; then
	cp ~/.dot_files/.gitconfig_work ~/.gitconfig
else
	cp ~/.dot_files/.gitconfig_personal ~/.gitconfig
fi

echo "Change default shell to zsh..."
chsh -s $(which zsh)
