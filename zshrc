# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Oh My Zsh
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="powerlevel10k/powerlevel10k"
ENABLE_CORRECTION="true"
ZSH_DISABLE_COMPFIX=true # Fixes some permissions issues
source $ZSH/oh-my-zsh.sh

# Prompt
# PROMPT='%n %. %% '

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

# Python shortcuts
alias pip='pip3'


# Rewrite Brewfile
alias holdmybeer='cd ~/.dotfiles && rm Brewfile && brew bundle dump && cd'


# Connect rclone
alias rcconnect='rclone mount --daemon aws: ~/Documents/Foam && rclone mount --daemon drive: ~/Documents/Drive'


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

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
