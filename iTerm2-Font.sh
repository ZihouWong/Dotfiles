# set iTerm2 font
# Meslo LG M DZ for Powerline
echo "Setting iTerm2 font"
git clone https://github.com/powerline/fonts.git --depth=1
./fonts/install.sh
rm -rf fonts
# set iTerm2 font manually

# text-color
git clone https://github.com/MartinSeeler/iterm2-material-design.git

