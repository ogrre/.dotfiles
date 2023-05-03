# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/profile.pre.bash" ]] && builtin source "$HOME/.fig/shell/profile.pre.bash"
export PATH="/Applications/MAMP/bin/php/php8.1.11/bin:${PATH}"
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(/opt/homebrew/bin/brew shellenv)"
. "$HOME/.cargo/env"
# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/profile.post.bash" ]] && builtin source "$HOME/.fig/shell/profile.post.bash"
alias php='/Applications/MAMP/bin/php/php8.1.11/bin/php -c "/Library/Application Support/appsolute/MAMP PRO/conf/php8.1.11.ini"'
alias composer='/Applications/MAMP/bin/php/composer'
alias php-config='/Applications/MAMP/bin/php/php8.1.11/bin/php-config'
alias phpdbg='/Applications/MAMP/bin/php/php8.1.11/bin/phpdbg'
alias phpize='/Applications/MAMP/bin/php/php8.1.11/bin/phpize'
alias pear='/Applications/MAMP/bin/php/php8.1.11/bin/pear'
alias peardev='/Applications/MAMP/bin/php/php8.1.11/bin/peardev'
alias pecl='/Applications/MAMP/bin/php/php8.1.11/bin/pecl'
