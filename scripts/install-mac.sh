#!/bin/bash

if ! command -v brew &> /dev/null; then
    echo "[dotfiles] installing Homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew install stats tmux

# symlink tmux config
cwd=$(cd "$(dirname "$0")/.." && pwd)
ln -sf $cwd/.tmux.conf ~/.tmux.conf
