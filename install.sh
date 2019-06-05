#!/bin/bash

# Scripts directory linked (usually used for startup scripts)
if [ -d ~/.scripts ]; then
    rm -r ~/.scripts;
fi
 ln -s ~/dotfiles/.scripts ~/.scripts

# VIM configuration
if [ -f ~/.vimrc ]; then
    rm ~/.vimrc;
fi
ln -s ~/dotfiles/vim/.vimrc ~/.vimrc

# ZSH configuration
if [ -f ~/.zshrc ]; then
    rm ~/.zshrc;
fi
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc

# kitty configuration
if [ -f ~/.config/kitty/kitty.conf ]; then
    rm ~/.config/kitty/kitty.conf;
fi
ln -s ~/dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf

# polybar configuration
if [ -f ~/.config/polybar/config ]; then
    rm ~/.config/polybar/config;
fi
ln -s ~/dotfiles/polybar/config ~/.config/polybar/config

# spicetify (Spotify skin) color profile
if [ -f ~/.config/spicetify/Themes/SpicetifyDefault/color.ini ]; then
    rm ~/.config/spicetify/Themes/SpicetifyDefault/color.ini;
fi
ln -s ~/dotfiles/spicetify/color.ini ~/.config/spicetify/Themes/SpicetifyDefault/color.ini
