SCRIPT_HOME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Setup Python and JavaScript development
$SCRIPT_HOME/init-emacs.sh
$SCRIPT_HOME/init-development.sh
$SCRIPT_HOME/init-python.sh
$SCRIPT_HOME/init-javascript.sh

# Setup Emacs
sed s%{{EMACS_HOME}}%$SCRIPT_HOME% init-addgene.el > init.el
sed s%{{EMACS_HOME}}%$SCRIPT_HOME% .emacs-addgene.el > .emacs
pushd ~
ln -sf $SCRIPT_HOME/.emacs .emacs
popd

# Setup Bash
pushd ~
ln -sf $SCRIPT_HOME/.bash_addgene .bash_addgene
popd
