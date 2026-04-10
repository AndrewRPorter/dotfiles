#!/bin/bash

sudo apt-get update

# note we pipe "yes n" into this apt install to preserve
# the z login file. Otherwise, this install will overwrite it
echo "[dotfiles] installing ZSH"
yes n | sudo apt -y install zsh

echo "[dotfiles] installing VIM"
sudo apt -y install vim

# set ZSH as default shell
if [[ "$SHELL" != "/bin/zsh"* ]]; then
    sudo chsh -s /bin/zsh $(whoami)
fi
