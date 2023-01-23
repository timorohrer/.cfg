unsetopt BEEP

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=""

ZSH_CUSTOM="$HOME/.ohmyzsh-custom"

plugins=(history git)

source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'

autoload -U promptinit; promptinit
prompt pure

bindkey -v
