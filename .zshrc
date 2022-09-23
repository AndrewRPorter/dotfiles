export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
	git
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# we don't want this on codespaces
if [[ "$OSTYPE" != "linux-gnu"* ]]; then
    eval "$(rbenv init - zsh)"
fi
