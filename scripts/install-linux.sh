#!/bin/bash

# note we pipe "yes n" into this apt install to preserve
# the z login file. Otherwise, this install will overwrite it
echo "[dotfiles] installing ZSH shell"
yes n | sudo sudo apt-get --assume-yes install zsh
