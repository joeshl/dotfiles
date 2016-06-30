# Path to your oh-my-zsh installation.
export ZSH=/Users/joeshl/.oh-my-zsh

## Aliases for projects

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git laravel5 brew)

# User configuration

export PATH="/usr/local/bin:/usr/local/Cellar/php54/5.4.45_3/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin:/usr/local/munki:/Users/joeshl/.composer/vendor/bin:/Users/joeshl/bin:./vendor/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vi ~/.zshrc"
alias ohmyzsh="vi ~/.oh-my-zsh"
alias artisan='php artisan'
alias c='clear'
alias webserver='python -m SimpleHTTPServer 8000'
alias connectL22001='ssh joeshl@45.55.158.207 -p 2214'
alias connectL22002='ssh joeshl@104.131.188.63'
alias npmls='npm ls --depth=0'
alias renamekre='exiftool -d %Y-%m-%d_ke-iphone_%%f.%%e "-filename<CreateDate" .'
alias renamejce='exiftool -d %Y-%m-%d_je-iphone_%%f.%%e "-filename<CreateDate" .'
alias renameNikon='exiftool -d %Y-%m-%d_nikon-p7700_%%f.%%e "-filename<CreateDate" .'

alias svpdbdump='mysqldump --user=joeshl --password --host=dbsmyd16.unx.sas.com --protocol=TCP svp > ~/Desktop/svp-dump.sql'
alias svpdbrestore='mysql --user=joeshl --password --protocol=TCP --host=dbsmyp16.unx.sas.com svp < ~/Desktop/svp-dump.sql'
alias videoOriginCurl='curl http://10.19.149.86:1935/vod/_definst_/mp4:svpclips/clips/feb2016/15780_1335940_adelesweetwood.mp4/playlist.m3u8'

## Aliases for projects
alias vcnmwp='cd ~/Projects/13272-vcnm-site/wp-content/themes/twentytwelve-sas/'
alias vcnmpl='cd ~/Projects/13272-vcnm-site/wp-content/plugins/vcnm-utils/'
alias 13271='cd ~/Projects/13271-svp/www/'
alias 13271phpunitcoverage='vendor/bin/phpunit --coverage-html code_coverage/'
alias 13272='cd ~/Projects/13272-vcnm-site/'
alias vcnm-transcoder='cd ~/Projects/vcnm-transcoder/'
alias lnxlgn="ssh joeshl@lnxlgn"
alias dbsmyd16="mysql --host=dbsmyd16 --user=joeshl --password  --protocol=TCP svp"

export PATH="/usr/local/sbin:$PATH"

alias wp-cli='php ~/bin/wp-cli.phar'
