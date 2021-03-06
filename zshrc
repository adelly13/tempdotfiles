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

# Colors
export TERM=xterm-256color

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
alias gd='git diff'

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
alias apcs='drv && cd APCS'
alias zk='cd ~/zettelkasten'

# Pyenv config
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.profile
echo 'eval "$(pyenv init --path)"' >> ~/.profile
echo 'if [ -n "$PS1" -a -n "$BASH_VERSION" ]; then source ~/.bashrc; fi' >> ~/.profile

echo 'eval "$(pyenv init -)"' >> ~/.bashrc

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export GOPATH="$HOME/.go"
export JDK_HOME="/usr/local/opt/openjdk"
export PATH="${JDK_HOME}/bin:/usr/local/sbin:$PATH"

# export PATH="/usr/local/anaconda3/bin:$PATH"  # commented out by conda initialize

alias java8='/usr/libexec/java_home -v1.8 --exec java'
alias python="python3"
