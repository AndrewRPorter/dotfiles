#!/bin/bash

echo "[dotfiles] installing Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install ruby specific brew packages
brew install rbenv ruby-build

brew install stats
