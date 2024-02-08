# Fig pre block. Keep at the top of this file.
if [ "$TMUX" = "" ]; then tmux; fi
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/jbloup/.oh-my-zsh"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

ZSH_THEME="fino"

plugins=(git laravel  zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
source ~/.config/zsh-plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh 

# zoxide
eval "$(zoxide init zsh)"
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# export PATH="/Applications/MAMP/bin/php/php8.1.11/bin:$PATH"
export NVM_SYMLINK_CURRENT=true
export PATH="/opt/homebrew/Cellar/vim/8.2.3450:$PATH"

# git
gdfa() {
	git --git-dir=$HOME/dotfiles/.git --work-tree=$HOME add $HOME/$1 
}
gdfc() {
	git --git-dir=$HOME/dotfiles/.git --work-tree=$HOME commit -m $1
}

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"

# Herd injected PHP binary.
export PATH="/Users/jbloup/Library/Application Support/Herd/bin/":$PATH
# Herd injected PHP 8.2 configuration.
export HERD_PHP_82_INI_SCAN_DIR="/Users/jbloup/Library/Application Support/Herd/config/php/82/"
# Herd injected PHP 8.1 configuration.
export HERD_PHP_81_INI_SCAN_DIR="/Users/jbloup/Library/Application Support/Herd/config/php/81/"
# Herd injected PHP 8.0 configuration.
export HERD_PHP_80_INI_SCAN_DIR="/Users/jbloup/Library/Application Support/Herd/config/php/80/"
# Herd injected PHP 7.4 configuration.
export HERD_PHP_74_INI_SCAN_DIR="/Users/jbloup/Library/Application Support/Herd/config/php/74/"
# Herd injected PHP 8.3 configuration.
export HERD_PHP_83_INI_SCAN_DIR="/Users/jbloup/Library/Application Support/Herd/config/php/83/"

# aliases
alias so="source ~/.zshrc"
alias n="nvim"
alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"
# source ~/.wk_aliases


