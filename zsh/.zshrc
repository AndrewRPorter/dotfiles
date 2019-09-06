# Path to your oh-my-zsh installation.
export ZSH="/home/andrew/.oh-my-zsh"

# https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Disable case sensitive completion
CASE_SENSITIVE="false"

# Enable hyphen-insensitive completion.
HYPHEN_INSENSITIVE="true"

# Load ZSH plugins
plugins=(git command-not-found extract)

source $ZSH/oh-my-zsh.sh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Custom CD command that is followed with an ls
 c() {
 	cd $1;
 	/usr/bin/exa-linux-x86_64 --long;
}

# Color schemes variables for man
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# Custom aliases
alias cd="c"
alias cat="bat --plain"
alias ls="/usr/bin/exa-linux-x86_64 --long"
alias kitty="~/.local/kitty.app/bin/kitty"
alias dolphin="dolphin . > /dev/null &"
alias disp="kitty icat"
alias black="black --line-length 120"
alias screencap="spectacle"

export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"

export PATH="/home/andrew/.local/kitty.app/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/andrew/.vimpkg/bin:/home/andrew/.local/bin:/usr/bin/apache-maven-3.6.1/bin:/usr/lib/jvm/java-11-openjdk-amd64/bin:/snap/bin:/home/andrew/.vimpkg/bin:/usr/local/bin/charm:/usr/local/go/bin:/home/linuxbrew/.linuxbrew/bin"
