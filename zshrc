# Prompt
PROMPT='%n %. %% '


# Terminal shortcuts
alias bk='cd ..'
alias clr='clear'
alias la='ls -a'
alias v='vim'

# Git shortcuts
alias gi='git init'
alias gs='git status'
alias ga='git add'
alias gc='git commit'


# Rewrite Brewfile
alias holdmybeer='cd ~/.dotfiles && rm Brewfile && brew bundle dump'


# Recursively remove .DS_Store files
alias cleanupds="find . -type f -name '*.DS_Store' -ls -delete"


# My IP Address
function myip() {
    ifconfig lo0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "lo0       : " $2}'
	ifconfig en0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en0 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
	ifconfig en0 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en0 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
	ifconfig en1 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en1 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
	ifconfig en1 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en1 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
}


# Flutter installation
export PATH="$PATH:/Users/tanay/Documents/Programming/SDKs/flutter/bin"

# Homebrew sbin
export PATH="/usr/local/sbin:$PATH"

