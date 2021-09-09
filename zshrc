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
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/tanay/.pyenv/versions/miniconda3-latest/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/tanay/.pyenv/versions/miniconda3-latest/etc/profile.d/conda.sh" ]; then
        . "/Users/tanay/.pyenv/versions/miniconda3-latest/etc/profile.d/conda.sh"
    else
        export PATH="/Users/tanay/.pyenv/versions/miniconda3-latest/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


export GOPATH="$HOME/.go"
export JDK_HOME="/usr/local/opt/openjdk"
export PATH="${JDK_HOME}/bin:/usr/local/sbin:$PATH"

alias java8='/usr/libexec/java_home -v1.8 --exec java'
