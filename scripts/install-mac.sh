#!/bin/bash

echo "[dotfiles] installing Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install stats tmux

# symlink tmux config
cwd=$(cd "$(dirname "$0")/.." && pwd)
ln -sf $cwd/.tmux.conf ~/.tmux.conf
