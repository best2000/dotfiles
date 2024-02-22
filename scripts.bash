sudo apt install zsh
chsh -s $(which zsh)


https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#in-your-zshrc

https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#manual-git-clone


https://starship.rs/
curl -sS https://starship.rs/install.sh | sh
echo eval "$(starship init zsh)" >> ~/.zshrc
mkdir -p ~/.config && touch ~/.config/starship.toml
