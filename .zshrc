export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
	git
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# configure rbenv path is the command exists
if [ -x "$(command -v rbenv)" ]; then
	eval "$(rbenv init - zsh)"
	export PATH="$HOME/.rbenv/shims:$PATH"
fi

# allow yarn command in github/github
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	export PATH=/workspaces/github/vendor/node/node-v16.13.0-linux-x64/bin:$PATH
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
