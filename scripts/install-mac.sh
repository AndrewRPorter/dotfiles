#!/bin/bash

if ! command -v brew &> /dev/null; then
    echo "[dotfiles] installing Homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew install stats tmux

# install tmux plugin manager
if [[ ! -d "$HOME/.tmux/plugins/tpm" ]]; then
    echo "[dotfiles] installing TPM"
    mkdir -p "$HOME/.tmux/plugins"
    git clone https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm"
fi

# symlink tmux config
cwd=$(cd "$(dirname "$0")/.." && pwd)
ln -sf $cwd/.tmux.conf ~/.tmux.conf
