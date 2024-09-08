# Summury: 
# 1. install Homebrew
# 2. using Homebrew install iTerm 2, Sublime Text, Fork, etc. 
# 3. sync apps customized setting
# origin testing git diff relatvie with branch
# test
# test2
# test3
# test4
# test3
# test4

echo "Setting Up For Zihou's MacOS ..."

# 1. install Homebrew
if test ! $(which omz); then
    echo "Installing Homebrew"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Oh My Zsh
function installIfNeed() {
    echo "这是我的第一个 shell 函数!"
}

echo "-----函数开始执行-----"

demoFun
echo "-----函数执行完毕-----"

if test ! $(which omz); then
    echo "Installing Oh My Zsh"
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


# iTerm2
echo "Instlling iTerm2"
brew install --cask iterm2


# Oh My Zsh
echo "Instlling Oh My Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# fix oh my zsh write permission
echo "fixing oh my zsh write permission"
compaudit | xargs chmod g-w,o-w

# brew update && upgrade
echo "brew update && upgrade"
brew update
brew upgrade

# Application
echo "Instlling Applications"
brew install --cask proxyman
brew install --cask lookin
brew install --cask fork
brew install --cask spotify
brew install --cask wechat
brew install --cask dingtalk
brew install --cask macdown
brew install bear

# Work Tools
echo "Instlling Work Tools"
brew install git
brew install wget
brew install jenv
brew install rbenv

brew install openssl
brew install pyenv
pyenv install 3.7.10
pyenv global 3.7.10 system

# set iTerm2 font
# Meslo LG M DZ for Powerline
echo "Setting iTerm2 font"
git clone https://github.com/powerline/fonts.git --depth=1
./fonts/install.sh
rm -rf fonts
# set iTerm2 font manually

# Xcode
echo "Instlling Xcode Tools"
brew install cocoapods
brew install xcodegen
brew install swiftformat

# brew cleanup
echo "brew cleanup"
brew cleanup

# brew doctor
echo "brew doctor"
brew doctor

source ~/.zshrc

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


# Homebrew
echo "Instlling Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# iTerm2
echo "Instlling iTerm2"
brew install --cask iterm2


# Oh My Zsh
echo "Instlling Oh My Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# fix oh my zsh write permission
echo "fixing oh my zsh write permission"
compaudit | xargs chmod g-w,o-w

# brew update && upgrade
echo "brew update && upgrade"
brew update
brew upgrade

# Application
echo "Instlling Applications"
brew install --cask proxyman
brew install --cask lookin
brew install --cask fork
brew install --cask spotify
brew install --cask wechat
brew install --cask dingtalk
brew install --cask macdown

# Work Tools
echo "Instlling Work Tools"
brew install git
brew install wget
brew install jenv
brew install rbenv


# Xcode
echo "Instlling Xcode Tools"
brew install cocoapods
brew install xcodegen
brew install swiftformat

# brew cleanup
echo "brew cleanup"
brew cleanup

# brew doctor
echo "brew doctor"
brew doctor

source ~/.zshrc

# set up fork
# - step one: Account login
# - step two: License
# - step three:
