
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
