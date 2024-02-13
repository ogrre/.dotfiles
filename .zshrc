# Fig pre block. Keep at the top of this file.
if [ "$TMUX" = "" ]; then tmux; fi
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

ZSH_THEME="fino"

plugins=(git laravel  zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
source ~/.config/zsh-plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh 

# zoxide
eval "$(zoxide init zsh)"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# export PATH="/Applications/MAMP/bin/php/php8.1.11/bin:$PATH"
export NVM_SYMLINK_CURRENT=true
export PATH="/opt/homebrew/Cellar/vim/8.2.3450:$PATH"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"

source ~/.config/aliases.sh


