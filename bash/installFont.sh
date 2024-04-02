#! /bin/bash

while :; do
	echo "Is this Arch? y/n"

	read answer
	if [ "$answer" = "n" ]; then
		break
	fi
	if [ "$answer" = "y" ]; then
		sudo pacman -S ttf-firacode-nerd
		exit
	fi
done

mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts/
curl -flO https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/FiraCode/Regular/FiraCodeNerdFont-Regular.ttf
curl -flO https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/FiraCode/Bold/FiraCodeNerdFont-Bold.ttf
