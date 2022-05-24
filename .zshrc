export ZSH="/home/ethem/.oh-my-zsh"
ZSH_THEME="ethmtrgt"

source $ZSH/oh-my-zsh.sh
source ~/git/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source ~/git/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
plugins=(
    git
)

alias py="python"
alias vim="nvim"
alias v="vim"

export EDITOR=vim
export VISUAL=vim
export PATH=$PATH:/home/ethem/.spicetify

