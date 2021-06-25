
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

brew install openssl
brew install pyenv
pyenv install 3.7.10
pyenv global 3.7.10 system

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

# .zshrc file
# Set Zsh Command Line Prefix
echo "# Set Zsh Command Line Prefix" >> ~/.zshrc
echo "DEFAULT_USER=\$USER" >> ~/.zshrc
echo "" >> ~/.zshrc

# set Zsh Path
echo "# Set Zsh PATH" >> ~/.zshrc
echo "export ZSH=\"/Users/zihouwong/.oh-my-zsh\"" >> ~/.zshrc
echo "" >> ~/.zshrc

# set iTerm2 theme
echo "# set iTerm2 theme" >> ~/.zshrc
echo "ZSH_THEME=\"agnoster\"" >> ~/.zshrc
echo "" >> ~/.zshrc

# rbenv init
echo "# rbenv init" >> ~/.zshrc
echo "eval \"$(rbenv init - zsh)\"" >> ~/.zshrc
echo "" >> ~/.zshrc

# alias Start
echo "# Setting alias" >> ~/.zshrc
echo "# alias" >> ~/.zshrc
# git status
echo "# git status" >> ~/.zshrc
echo "alias gs='git status'" >> ~/.zshrc
echo "" >> ~/.zshrc

# git commit
echo "# git commit" >> ~/.zshrc
echo "alias gc='git commit'" >> ~/.zshrc
echo "alias gcm='git commit -m '" >> ~/.zshrc
echo "" >> ~/.zshrc

# git add
echo "# git add" >> ~/.zshrc
echo "alias ga='git add'" >> ~/.zshrc
echo "alias gaa='git add -A'" >> ~/.zshrc
echo "alias gap='git add -p'" >> ~/.zshrc
echo "" >> ~/.zshrc

# git push
echo "# git push" >> ~/.zshrc
echo "alias gp='git push'" >> ~/.zshrc
echo "" >> ~/.zshrc

# git fetch
echo "# git fetch" >> ~/.zshrc
echo "alias gf='git fetch'" >> ~/.zshrc
echo "" >> ~/.zshrc

# switch branch
echo "# switch branch" >> ~/.zshrc
echo "alias sb='xcodegen && bundle exec pod install --repo-update && git submodule update'" >> ~/.zshrc
echo "" >> ~/.zshrc

# format
echo "# format" >> ~/.zshrc
# format - GuruClub Project
echo "# format - GuruClub Project" >> ~/.zshrc
echo "alias formatClub='Pods/SwiftFormat/CommandLineTool/swiftformat . --exclude Carthage,DerivedData,Example,Pods,R.generated.swift,R.temp.swift --disable redundantSelf,blankLinesAroundMark,blankLinesAtStartOfScope,wrapMultilineStatementBraces,initCoderUnavailable,enumNamespaces,typeSugar --swiftversion 5.2 --stripunusedargs closure-only --nospaceoperators "'"...,..<"'" --wraparguments before-first --wrapcollections before-first'" >> ~/.zshrc
echo "" >> ~/.zshrc

# format - GuruNetwork Project
echo "# format - GuruNetwork Project" >> ~/.zshrc
echo "alias formatNetwork='swiftformat . --exclude Carthage,DerivedData,Example,Pods,R.generated.swift,R.temp.swift --disable redundantSelf,blankLinesAroundMark,blankLinesAtStartOfScope,wrapMultilineStatementBraces,initCoderUnavailable,enumNamespaces,typeSugar --swiftversion 5.2 --stripunusedargs closure-only --nospaceoperators "'"...,..<"'" --wraparguments before-first --wrapcollections before-first'" >> ~/.zshrc
echo "" >> ~/.zshrc

# sort - l10n Project
echo "# sort - l10n Project" >> ~/.zshrc
echo "alias sortL10n='sort Localizable.strings -o Localizable.strings'" >> ~/.zshrc
echo "" >> ~/.zshrc
# alias End

source ~/.zshrc
