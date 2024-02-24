#!/bin/sh

#ref https://github.com/craftzdog/dotfiles-public
#this setup is based on Ubuntu

sudo apt update
sudo apt upgrade

#install tools
sudo apt install neofetch
sudo apt install fzf    #https://github.com/junegunn/fzf
sudo apt install bat    #https://github.com/sharkdp/bat
sudo apt install lsd    #https://github.com/ogham/exa?tab=readme-ov-file    #newer eza => https://github.com/eza-community/eza or lsd => https://github.com/lsd-rs/lsd


#setup neofetch
cp -f ./neofetch/config.conf ~/.config/neofetch/config.conf

#setup fish shell
#https://github.com/fish-shell/fish-shell
#install
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish
#config
cp -f ./fish/config.fish ~/.config/fish/config.fish
cp -f ./fish/fish_variables ~/.config/fish/config.fish
#set default shell
chsh -s $(which fish)

#setup starship prompt
# https://starship.rs/
#install
curl -sS https://starship.rs/install.sh | sh
echo -e 'starship init fish | source' >> ~/.config/fish/config.fish
#config
mkdir -p ~/.config
cp ./starship/starship.toml ~/.config/starship.toml

exec $SHELL

#fish web config run => 'fish_config'