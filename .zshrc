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

alias ..="cd .."
alias ...="cd ../.."
alias gs="git status"
alias gitwip="git add -A; git commit -m 'WIP'; git push"
alias c="clear"
