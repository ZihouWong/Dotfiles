#==============
# Remove old dot flies
#==============
function removeFiles() {
    sudo rm -rf ~/.zshrc > /dev/null 2>&1
    sudo rm -rf ~/.aliases > /dev/null 2>&1
    sudo rm -rf ~/.gitconfig > /dev/null 2>&1
    sudo rm -rf ~/.gitignore > /dev/null 2>&1
}

#==============
# Create symlinks in the home folder
# Allow overriding with files of matching names in the custom-configs dir
#==============
function makeLinks() {
    SYMLINKS=()
    ln -sfn ~/dotfiles/zsh/zshrc ~/.zshrc
    SYMLINKS+=('.zshrc')
    ln -sfn ~/dotfiles/gitconfig ~/.gitconfig
    SYMLINKS+=('.gitconfig')
    ln -sfn ~/dotfiles/.aliases ~/.aliases
    SYMLINKS+=('.aliases')
    ln -sfn ~/dotfiles/.gitignore ~/.gitignore
    SYMLINKS+=('.gitignore')

    echo ${SYMLINKS[@]}
}

read -rp "This may overwrite existing files. Are you sure? (y/n) " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
    removeFiles && makeLinks
fi;