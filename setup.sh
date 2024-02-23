#!/bin/bash

#setup fish
#https://github.com/fish-shell/fish-shell
#install
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt upgrade
sudo apt install fish
#config
cp -f ./config.fish ~/.config/fish/config.fish
cp -f ./fish_variables ~/.config/fish/config.fish
#set default shell
chsh -s $(which fish)

#setup starship
# https://starship.rs/
#install
curl -sS https://starship.rs/install.sh | sh
echo -e 'eval "$(starship init zsh)"' >> ~/.config/fish/config.fish
#config
mkdir -p ~/.config
cp ./starship.toml ~/.config/starship.toml

exec $SHELL