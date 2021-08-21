DEFAULT_USER=$USER

export ZSH="/Users/zihouwong/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(git)

source $ZSH/oh-my-zsh.sh


# Setting alias
# alias
# git status
alias gs='git status'

# git commit
alias gc='git commit'
alias gcm='git commit -m '

# git add
alias ga='git add'
alias gaa='git add -A'
alias gap='git add -p'

# git push
alias gp='git push'

# git fetch
alias gf='git fetch'

# switch branch
alias sb='xcodegen && bundle exec pod install --repo-update && git submodule update'

# format
# format - GuruClub Project
alias formatMainProject='Pods/SwiftFormat/CommandLineTool/swiftformat . --exclude Carthage,DerivedData,Example,Pods,R.generated.swift,R.temp.swift --disable redundantSelf,blankLinesAroundMark,blankLinesAtStartOfScope,wrapMultilineStatementBraces,initCoderUnavailable,enumNamespaces,typeSugar --swiftversion 5.2 --stripunusedargs closure-only --nospaceoperators "...,..<" --wraparguments before-first --wrapcollections before-first'

# format - Guru Pod Project Project
alias formatPodProject='swiftformat . --exclude Carthage,DerivedData,Example,Pods,R.generated.swift,R.temp.swift --disable redundantSelf,blankLinesAroundMark,blankLinesAtStartOfScope,wrapMultilineStatementBraces,initCoderUnavailable,enumNamespaces,typeSugar --swiftversion 5.2 --stripunusedargs closure-only --nospaceoperators "...,..<" --wraparguments before-first --wrapcollections before-first'

# sort - l10n Project
alias sortL10n='sort Localizable.strings -o Localizable.strings'

# rbenv init
eval "$(rbenv init - zsh)"

