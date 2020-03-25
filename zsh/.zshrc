# Path to your oh-my-zsh installation.
export ZSH="/home/andrew/.oh-my-zsh"

# https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="dpoggi"

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
alias cat="bat --style numbers,grid"
alias ls="/usr/bin/exa-linux-x86_64 --long"
alias kitty="~/.local/kitty.app/bin/kitty"
alias dolphin="dolphin . > /dev/null &"
alias disp="kitty icat"
alias black="black --line-length 120"
alias vpn="expressvpn"

okularFunc() {
    okular $1 &;
}
alias okular="okularFunc"

export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"

export PATH="/home/andrew/.local/kitty.app/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/andrew/.vimpkg/bin:/home/andrew/.local/bin:/usr/bin/apache-maven-3.6.1/bin:/usr/lib/jvm/java-11-openjdk-amd64/bin:/snap/bin:/home/andrew/.vimpkg/bin:/usr/local/bin/charm:/usr/local/go/bin:/home/linuxbrew/.linuxbrew/bin"
source /home/andrew/.scripts/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/andrew/.sdkman"
[[ -s "/home/andrew/.sdkman/bin/sdkman-init.sh" ]] && source "/home/andrew/.sdkman/bin/sdkman-init.sh"
