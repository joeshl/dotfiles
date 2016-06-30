function perf {
  curl -o /dev/null  -s -w "%{time_connect} + %{time_starttransfer} = %{time_total}\n" "$1"
}

export HISTFILESIZE=10000
export HISTSIZE=5000
export HISTCONTROL=ignoredups:erasedups

## Setup Alias for helpful shortcuts
alias renamekre='exiftool -d %Y-%m-%d_ke-iphone_%%f.%%e "-filename<CreateDate" .'
alias renamejce='exiftool -d %Y-%m-%d_je-iphone_%%f.%%e "-filename<CreateDate" .'
alias renameNikon='exiftool -d %Y-%m-%d_nikon-p7700_%%f.%%e "-filename<CreateDate" .'


alias editbashprofile='vim ~/.bash_profile'
alias editvimrc='vim ~/.vimrc'
alias reloadbashprofile='source ~/.bash_profile'
alias svpdbdump='mysqldump --user=joeshl --password --host=dbsmyd16.unx.sas.com --protocol=TCP svp > ~/Desktop/svp-dump.sql'
alias svpdbrestore='mysql --user=joeshl --password --protocol=TCP --host=dbsmyp16.unx.sas.com svp < ~/Desktop/svp-dump.sql'
alias videoOriginCurl='curl http://10.19.149.86:1935/vod/_definst_/mp4:svpclips/clips/feb2016/15780_1335940_adelesweetwood.mp4/playlist.m3u8'

## Aliases for projects
alias vcnmwp='cd ~/Projects/13272-vcnm-site/wp-content/themes/twentytwelve-sas/'
alias vcnmpl='cd ~/Projects/13272-vcnm-site/wp-content/plugins/vcnm-utils/'
alias 13271='cd ~/Projects/13271-svp/www/'
alias 13271phpunitcoverage='vendor/bin/phpunit --coverage-html code_coverage/'
alias 13272='cd ~/Projects/13272-vcnm-site/'


## Aliases for misc stuff
alias c="clear"
alias ..="cd .."
alias ...="cd ../../"
alias webserver="python -m SimpleHTTPServer 8000"
alias artisan='php artisan'

# alias connectLaunch22="ssh launch22.com@s174378.gridserver.com"
alias connectL22001="ssh -p 2214 joeshl@45.55.158.207"
alias connectL22002="ssh joeshl@104.131.188.63"
alias lnxlgn="ssh joeshl@lnxlgn"

# Aliass for connectio to db
alias dbsmyd16="mysql --host=dbsmyd16 --user=joeshl --password  --protocol=TCP svp"

# Generic Options
export GREP_OPTIONS='--color=auto -n'

# Load the prompt
source ~/.bash_prompt


########### Mac Only Options / Requires Brew and Colourify #############
# Tell grep to highlight matches
source "`brew --prefix grc`/etc/grc.bashrc"
alias l="colourify ls -hl"


## Update Path with helpful bins
export PATH=$PATH:~/.composer/vendor/bin:~/bin
export PATH=$PATH:./vendor/bin
export PATH="/usr/local/bin:$(brew --prefix php54)/bin:$PATH"

## Helpful function for listing node packages
function npmls() {
  npm ls "$@" | grep ^[└├]
}
