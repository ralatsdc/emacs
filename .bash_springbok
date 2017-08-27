
# MacPorts setup
# See: https://guide.macports.org/chunked/installing.shell.html
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

# Virtualenvwrapper setup
# See: http://virtualenvwrapper.readthedocs.io/en/latest/install.html
source /opt/local/bin/virtualenvwrapper.sh-2.7
export WORKON_HOME=$HOME/.virtualenvs

# Emacs setup
export EMACS_HOME=~/Projects/Development/emacs
export EDITOR=emacs
alias open.Emacs="open -n -a Emacs"

# Mac OS X aliases
alias dns.flush.cache="sudo dscacheutil -flushcache"
alias dns.kill.responder="sudo killall -HUP mDNSResponder"
alias dns.reset="dns.flush.cache ; sleep 3 ; dns.kill.responder"
alias finder.killall="killall Finder /System/Library/CoreServices/Finder.app"
alias finder.show.files="defaults write com.apple.finder AppleShowAllFiles YES ; finder.killall"
alias finder.hide.files="defaults write com.apple.finder AppleShowAllFiles NO ; finder.killall"

# Version control aliases 
srt="committerdate"
fmt="'%(committerdate:short) %(authorname) %(HEAD) "
fmt+="%(color:red)%(refname:short)%(color:reset) "
fmt+="-- %(contents:subject)'"
alias git.for-each-ref="git for-each-ref --sort=$srt refs/heads/ --format=$fmt"

# Addgene development aliases
ADDGENE_PROJECT_HOME="/Users/raymondleclair/Projects/Addgene"
alias source.bash_addgene="source $ADDGENE_PROJECT_HOME/addgene-dev-env/.bash_addgene"
alias source.bash_staging="source.bash_addgene ; source $ADDGENE_PROJECT_HOME/addgene-dev-env/.bash_staging"
alias source.bash_vagrant="source.bash_addgene ; source $ADDGENE_PROJECT_HOME/addgene-dev-env/.bash_vagrant"
