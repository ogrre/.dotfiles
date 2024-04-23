brew install yq

# Nerd font
brew tap homebrew/cask-fonts
brew install font-hack-nerd-font

# Yabai
brew install koekeishiya/formulae/yabai
yabai --start-service

# Skhd
brew install koekeishiya/formulae/skhd
skhd --start-service

# Sketchybar
brew tap FelixKratz/formulae
brew install sketchybar
brew services start sketchybar

# Zsh
brew install zsh-syntax-highlighting
git clone https://github.com/scmbreeze/scm_breeze.git ~/.scm_breeze
~/.scm_breeze/install.sh
source "${ZDOTDIR:-$HOME}/.zshrc"
