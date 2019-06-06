# Path to your oh-my-zsh installation.
export ZSH="/home/andrew/.oh-my-zsh"

# https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"


# Disable case sensitive completion
CASE_SENSITIVE="false"

# Enable hyphen-insensitive completion.
HYPHEN_INSENSITIVE="true"

# Enable command auto-correction.
ENABLE_CORRECTION="true"

# Load ZSH plugins
plugins=(git command-not-found extract)

source $ZSH/oh-my-zsh.sh

# Custom CD command that is followed with an ls
 c() {
 	cd $1;
 	/usr/bin/exa-linux-x86_64 --long;
}

alias cd="c"
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias man="tldr"
alias cat="bat"
alias ls="/usr/bin/exa-linux-x86_64 --long"
alias kitty="~/.local/kitty.app/bin/kitty"
alias dolphin="dolphin . > /dev/null &"
alias disp="kitty icat"

export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"
export PATH="/home/andrew/.local/kitty.app/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/andrew/.vimpkg/bin:/home/andrew/.local/bin:/usr/bin/apache-maven-3.6.1/apache-maven/src/bin:$JAVA_HOME/bin"
