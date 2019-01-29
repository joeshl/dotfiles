# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="refined"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git-open)

# User configuration

export PATH="/usr/local/bin"
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/usr/bin"
export PATH="$PATH:/bin"
export PATH="$PATH:/usr/sbin"
export PATH="$PATH:/sbin"
export PATH="$PATH:/opt/X11/bin"
export PATH="$PATH:/usr/local/git/bin"
export PATH="$PATH:/usr/local/munki"
export PATH="$PATH:$HOME/.composer/vendor/bin"
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:./vendor/bin"
export PATH="/usr/local/sbin:node_modules/.bin:$PATH"

export ANSIBLE_INVENTORY=$HOME/.ansible-hosts

# export MANPATH="/usr/local/man:$MANPATH"

# export SSH_KEY_PATH="~/.ssh/dsa_id"

source $ZSH/oh-my-zsh.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias ak="ack -i --ignore-dir vendor --ignore-dir storage --ignore-file tags"
alias art='php artisan'
alias c='clear'
#alias fresh="artisan migrate:refresh --seed"
alias gst='git status'
alias npmls='npm ls --depth=0'
alias ohmyzsh="vim ~/.oh-my-zsh"
alias p="phpunit"
alias pf="phpunit --filter "
alias px="phpunit --stop-on-failure --stop-on-error "
alias tink='artisan tinker'
alias webserver='python -m SimpleHTTPServer 8001'
alias wip="git add . && git commit -m 'wip'"
alias wp-cli='php ~/bin/wp-cli.phar'
alias xx="exit"
alias zshconfig="vi ~/.zshrc"
alias folderSizes="sh ~/Projects/dotfiles/folderSizes.sh"
alias gitclean="git branch --merged | egrep -v \"(^\\*|master|dev)\" | xargs git branch -d"
alias gitcleanremote="git remote prune origin"

source ~/.alias_local

