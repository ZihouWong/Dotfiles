# remove UserName  
DEFAULT_USER=$USER

# [ZSH]
# enable ZSH
export ZSH="$HOME/.oh-my-zsh"


# theme
ZSH_THEME="agnoster"

# Plugins
plugins=(
	git
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# aliases extension
source ~/.aliases

# [Proxy]
export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890

# [SSH]
# slience ssh-add
ssh-add --apple-use-keychain ~/.ssh/id_ed25519 >/dev/null 2>&1
