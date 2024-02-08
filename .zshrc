
# Oh My ZSH
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="fino"

# Oh My Zsh Plugins
plugins=(git docker laravel zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
# Homebrew
export PATH=/opt/homebrew/bin/:$PATH
# export PATH=$HOME/.composer/vendor/bin/:$PATH

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source ~/.zplugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# Zoxide
eval "$(zoxide init zsh)"

# TMUX
if [ "$TMUX" = "" ]; then tmux; fi

# git
gdfa() {
	git --git-dir=$HOME/.dotfiles/.git --work-tree=$HOME add $HOME/$1 
}
gdfc() {
	git --git-dir=$HOME/.dotfiles/.git --work-tree=$HOME commit -m $1
}

# Shortcuts
alias so="source ~/.zshrc"
alias n="nvim"
alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"

