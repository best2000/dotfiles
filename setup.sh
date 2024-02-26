#!/bin/sh

#ref https://github.com/craftzdog/dotfiles-public
#this setup is based on Ubuntu

sudo apt update
sudo apt upgrade

#install tools
sudo apt install neofetch
sudo apt install fzf    #https://github.com/junegunn/fzf
sudo apt install bat    #https://github.com/sharkdp/bat
sudo apt install exa    #https://github.com/ogham/exa?tab=readme-ov-file    #newer eza => https://github.com/eza-community/eza or lsd => https://github.com/lsd-rs/lsd
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish  #https://github.com/fish-shell/fish-shell

#setup neofetch
neofetch && sleep 1
cp -f ./neofetch/config.conf ~/.config/neofetch/config.conf

#setup fish shell
exec fish && sleep 1   # try first time fish shell session then exit
#config
mkdir ~/.config/fish
cp -f ./fish/config.fish ~/.config/fish/config.fish
cp -f ./fish/fish_variables ~/.config/fish/fish_variables
#set default shell
sudo chsh -s $(which fish)


#setup starship prompt
# https://starship.rs/
#install
sudo curl -sS https://starship.rs/install.sh | sh
echo -e 'starship init fish | source' >> ~/.config/fish/config.fish
#config
# mkdir -p ~/.config
cp ./starship/starship.toml ~/.config/starship.toml

echo $SHELL
exec $SHELL

#fish web config run => 'fish_config'
