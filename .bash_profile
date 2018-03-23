function perf {
  curl -o /dev/null  -s -w "%{time_connect} + %{time_starttransfer} = %{time_total}\n" "$1"
}

export HISTFILESIZE=10000
export HISTSIZE=5000
export HISTCONTROL=ignoredups:erasedups

## Edit Bash Profile
alias editbashprofile='vim ~/.bash_profile'
alias editvimrc='vim ~/.vimrc'
alias reloadbashprofile='source ~/.bash_profile'

## Source the local alias file
source ./.alias_local

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
