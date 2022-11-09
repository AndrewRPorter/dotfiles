#!/bin/bash

sudo apt-get update

# note we pipe "yes n" into this apt install to preserve
# the z login file. Otherwise, this install will overwrite it
echo "[dotfiles] installing ZSH"
yes n | sudo apt -y install zsh

echo "[dotfiles] installing VIM"
sudo apt -y install vim

# setup rbenv and ruby-build for codespaces
echo "[dotfiles] installing rbenv and configure ruby-build"
sudo apt -y install rbenv
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build 

# set ZSH as default shell
if [[ "$SHELL" != "/bin/zsh"* ]]; then
    sudo chsh -s /bin/zsh $(whoami)
fi
