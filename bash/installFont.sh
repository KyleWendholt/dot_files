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

echo "exit"
exit

mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts/
curl -flO https://github.com/ryanoasis/nerd-fonts/blob/6f485ab680b092fc110d8afe0873ebced9fc5281/patched-fonts/FiraCode/Regular/FiraCodeNerdFont-Regular.ttf
