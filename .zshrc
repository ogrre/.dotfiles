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

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Load Angular CLI autocompletion.
source <(ng completion script)

# pnpm
export PNPM_HOME="/Users/jbloup/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# alias php
alias lsphp="ls /Applications/MAMP/bin/php/"
alias php8.2="/Applications/MAMP/bin/php/8.2.0/bin/php"
alias php8.1="/Applications/MAMP/bin/php/php8.1.13/bin/php"
alias php8.0="/Applications/MAMP/bin/php/php8.0.8/bin/php"
alias php7.4="/Applications/MAMP/bin/php/php7.4.33/bin/php"
alias php7.3="/Applications/MAMP/bin/php/php7.3.33/bin/php"
alias php7.1="/Applications/MAMP/bin/php/php7.1.33/bin/php"

# alias composer
alias composer="php /opt/homebrew/bin/composer"
alias composer8.2="/Applications/MAMP/bin/php/php8.2.0/bin/php /opt/homebrew/bin/composer"
alias composer8.1="/Applications/MAMP/bin/php/php8.1.13/bin/php /opt/homebrew/bin/composer"
alias composer8.0="/Applications/MAMP/bin/php/php8.0.8/bin/php /opt/homebrew/bin/composer"
alias composer7.4="/Applications/MAMP/bin/php/php7.4.33/bin/php /opt/homebrew/bin/composer"
alias composer7.3="/Applications/MAMP/bin/php/php7.3.33/bin/php /opt/homebrew/bin/composer"
alias composer7.1="/Applications/MAMP/bin/php/php7.1.33/bin/php /opt/homebrew/bin/composer"

# bun completions
[ -s "/Users/jbloup/.bun/_bun" ] && source "/Users/jbloup/.bun/_bun"

if [ -f ~/.zsh/zshalias ]; then
    source ~/.zsh/zshalias
else
    print "404: ~/.zsh/zshalias not found."
fi

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
