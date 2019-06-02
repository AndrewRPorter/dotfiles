#!/bin/bash

# Link scripts directory
rm -r ~/.scripts; ln -s ~/dotfiles/.scripts ~/.scripts

# Link configuration files
rm ~/.vimrc; ln -s ~/dotfiles/vim/.vimrc ~/.vimrc
rm ~/.zshrc; ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc
rm ~/.config/kitty/kitty.conf; ln -s ~/dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf
rm ~/.config/polybar/config; ln -s ~/dotfiles/polybar/config ~/.config/polybar/config
