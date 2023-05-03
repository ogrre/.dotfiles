# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/jbloup/.oh-my-zsh"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="jonathan"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
plugins=( zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
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
alias php8.2="/opt/homebrew/Cellar/php/8.2.5/bin/php"
alias php8.1="/Applications/MAMP/bin/php/php8.1.11/bin/php"
alias php8.0="/Applications/MAMP/bin/php/php8.0.8/bin/php"
alias php7.4="/Applications/MAMP/bin/php/php7.4.21/bin/php"
alias php7.3="/Applications/MAMP/bin/php/php7.3.29/bin/php"
alias php7.1="/Applications/MAMP/bin/php/php7.1.33/bin/php"

# alias composer
alias composer8.2="/opt/homebrew/Cellar/php/8.2.5/bin/php /opt/homebrew/bin/composer"
alias composer8.1="/Applications/MAMP/bin/php/php8.1.11/bin/php /opt/homebrew/bin/composer"
alias composer8.0="/Applications/MAMP/bin/php/php8.0.8/bin/php /opt/homebrew/bin/composer"
alias composer7.4="/Applications/MAMP/bin/php/php7.4.21/bin/php /opt/homebrew/bin/composer"
alias composer7.3="/Applications/MAMP/bin/php/php7.3.33/bin/php /opt/homebrew/bin/composer"
alias composer7.1="/Applications/MAMP/bin/php/php7.1.33/bin/php /opt/homebrew/bin/composer"

# alias 
alias cdw="cd Dev/wokine"
alias n="/opt/homebrew/bin/nvim"
# bun completions
[ -s "/Users/jbloup/.bun/_bun" ] && source "/Users/jbloup/.bun/_bun"

# Towared root navigations
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# refresh terminal
alias so="source ~/.zshrc"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"

export TEST="Dev/test/file.txt"
PATH=/Users/jbloup/Library/pnpm:/Users/jbloup/.bun/bin:/opt/homebrew/Cellar/vim/8.2.3450:/Applications/MAMP/bin/php/php8.1.11/bin:/Users/jbloup/.nvm/versions/node/v18.7.0/bin:/opt/local/bin:/opt/local/sbin:/opt/homebrew/bin:/opt/homebrew/sbin:/Applications/MAMP/bin/php/php8.1.11/bin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin:/Users/jbloup/.cargo/bin:/Applications/MAMP/bin/php/php7.4.21/bin:/Applications/MAMP/bin/php/php7.4.21/bin/php:/Applications/MAMP/bin/php/php7.4.21/bin/php:/Users/jbloup/Library/pnpm:/Users/jbloup/.bun/bin:/opt/homebrew/Cellar/vim/8.2.3450:/Applications/MAMP/bin/php/php8.1.11/bin:/Users/jbloup/.nvm/versions/node/v18.7.0/bin:/opt/local/bin:/opt/local/sbin:/opt/homebrew/bin:/opt/homebrew/sbin:/Applications/MAMP/bin/php/php8.1.11/bin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin:/Users/jbloup/.cargo/bin:/Applications/MAMP/bin/php/php7.4.21/bin:/Applications/MAMP/bin/php/php7.4.21/bin/php:/Applications/MAMP/bin/php/php7.3.33/bin/php

eval "$(starship init zsh)"
