echo "Setting Up..."

# Oh My Zsh
echo "Installing Oh My Zsh"
if test ! $(which omz); then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Fixing oh my zsh write premission
echo "Fixing oh my zsh write permission"
compaudit | xargs chmod g-w,o-w

# Brew update && upgrade
echo "Brew update && upgrade"
brew update
brew upgrade

# Application
echo "Installing Applications"
brew install # Application
echo "Instlling Applications"
brew install --cask proxyman
brew install --cask lookin
brew install --cask fork
brew install --cask spotify
brew install --cask wechat
brew install --cask dingtalk
brew install --cask macdown
