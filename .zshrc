DEFAULT_USER=$USER

export ZSH="/Users/zihouwong/.oh-my-zsh"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="/opt/homebrew/lib/ruby/gems/3.0.0/bin:$PATH"

ZSH_THEME="agnoster"

plugins=(git)

source $ZSH/oh-my-zsh.sh
source .aliases
