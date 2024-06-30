# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export TERMINAL=/usr/bin/terminal/alacritty
ZSH_THEME="crunch"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"
plugins=(git)
source $ZSH/oh-my-zsh.sh
# User configuration
export LANG=en_US.UTF-8
alias nv="nvim" 
