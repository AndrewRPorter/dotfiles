#!/bin/sh

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

# i3-gaps configuration
if [ -f ~/.config/plasma-workspace/env/start_window_manager.sh ]; then
	rm ~/.config/plasma-workspace/env/start_window_manager.sh;
fi
ln -s ~/dotfiles/i3/start_window_manager.sh ~/.config/plasma-workspace/env

if [ -f /etc/i3/config ]; then
	sudo rm /etc/i3/config;
fi
sudo ln -s ~/dotfiles/i3/config /etc/i3/config
