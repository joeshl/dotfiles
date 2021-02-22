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
export NVM_LAZY_LOAD=true
export NVM_COMPLETION=true

plugins=(git-open kubectl docker zsh-nvm)

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

export CDPATH="$CDPATH:$HOME/Projects"

export ANSIBLE_INVENTORY=$HOME/.ansible-hosts

export COMPOSER_MEMORY_LIMIT=-1

# export MANPATH="/usr/local/man:$MANPATH"

# export SSH_KEY_PATH="~/.ssh/dsa_id"

source $ZSH/oh-my-zsh.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
#alias fresh="artisan migrate:refresh --seed"
alias addDateTimeToPhotos='exiftool -d %Y-%m-%d_%H%M%S_%%f.%%e "-filename<CreateDate" .'
alias art='php artisan'
alias c='clear'
alias chrome="open -a 'Google Chrome'"
alias folderSizes="sh ~/Projects/dotfiles/folderSizes.sh"
alias doco="docker-compose"
alias gb="git branch"
alias gitclean="git branch --merged | egrep -v \"(^\\*|master|dev)\" | xargs git branch -d"
alias gitcleanremote="git remote prune origin"
alias gst='git status'
alias npmls='npm ls --depth=0'
alias ohmyzsh="vim ~/.oh-my-zsh"
alias p="phpunit"
alias pf="phpunit --filter "
alias px="phpunit --stop-on-failure --stop-on-error "
alias tink='art tinker'
alias webserver='python -m SimpleHTTPServer 8001'
alias v='code .'
alias wip="git add . && git commit -m 'wip'"
alias wp-cli='php ~/bin/wp-cli.phar'
alias xx="exit"
alias zshconfig="vi ~/.zshrc"
alias zshsource="source ~/.zshrc"

source ~/.alias_local

# export DOCKER_TLS_VERIFY="1"
# export DOCKER_HOST="tcp://192.168.99.100:2376"
# export DOCKER_CERT_PATH="/Users/joeshl/.docker/machine/machines/default"
# export DOCKER_MACHINE_NAME="default"
export PATH="/usr/local/opt/php@7.4/bin:$PATH"
export PATH="/usr/local/opt/php@7.4/sbin:$PATH"


export KUBECONFIG="$HOME/.kube/config:$HOME/.kube/itk8s-joeshl.conf"
export HOMEBREW_GITHUB_API_TOKEN=63b506e3b0f6862c8ac23cc4cd3fbc81089efe61

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
