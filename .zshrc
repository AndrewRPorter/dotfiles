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
alias c="clear"
alias ll='ls -la'
# git specific aliases
alias gs="git status"
alias gd="git diff"
alias gw="git add -A; git commit -m 'WIP'"
alias gwp="gw; git push"
