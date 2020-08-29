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

# Editor
export EDITOR="vim"
alias v='vim'

# Terminal shortcuts
alias bk='cd ..'
alias la='ls -a'

# Git shortcuts
alias gs='git status'
alias ga='git add'
alias gc='git commit'

# Python shortcuts
alias python='python3'
alias pip='pip3'

# C++ shortcuts
alias gpp='g++-10'
cco() { gpp -std=c++17 -O2 -o $1 $1.cpp -Wall -Wextra -Wshadow; } # Compiles `name` (taken as an argument)
crun() { cco $1 && ./$1 & fg; } # Compiles and executes `name` (taken as an argument)

# Rewrite Brewfile
alias holdmybeer='cd ~/.dotfiles && rm Brewfile && brew bundle dump && cd'

# Recursively remove .DS_Store files
alias cleanupds="find . -type f -name '*.DS_Store' -ls -delete"

# Easy cd
alias drv='cd ~/Documents/School/Drive/My\ Drive'

# My IP Address
function myip() {
	ifconfig lo0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "lo0       : " $2}'
	ifconfig en0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en0 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
	ifconfig en0 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en0 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
	ifconfig en1 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en1 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
	ifconfig en1 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en1 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
if [ -e /Users/tanay/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/tanay/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

