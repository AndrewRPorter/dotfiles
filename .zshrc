export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
	git
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

alias ..="cd .."
alias ...="cd ../.."
alias c="clear"
alias ll='ls -la'
# git specific aliases
alias gs="git status"
alias gd="git diff"
alias gw="git add -A; git commit -m 'WIP'"
alias gwp="gw; git push"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && source "$NVM_DIR/bash_completion"

if command -v tmux >/dev/null 2>&1 && [[ -z "$TMUX" && "$TERM_PROGRAM" != "vscode" ]]; then
  exec tmux new-session
fi