SCRIPT_HOME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Setup Python, JavaScript, MATLAB, Java, and R development
$SCRIPT_HOME/init-emacs.sh
$SCRIPT_HOME/init-development.sh
$SCRIPT_HOME/init-python.sh
$SCRIPT_HOME/init-javascript.sh
$SCRIPT_HOME/init-matlab.sh
$SCRIPT_HOME/init-java.sh
$SCRIPT_HOME/init-r.sh
$SCRIPT_HOME/init-scala.sh
$SCRIPT_HOME/init-yaml.sh

# Setup Emacs
sed s%{{EMACS_HOME}}%$SCRIPT_HOME% init-springbok.el > init.el
sed s%{{EMACS_HOME}}%$SCRIPT_HOME% .emacs-springbok.el > .emacs
sed s%{{EMACS_HOME}}%$SCRIPT_HOME% .emacs-fini-springbok.el > .emacs-fini.el
pushd ~
ln -sf $SCRIPT_HOME/.emacs .emacs
popd

# Setup Bash
sed s%{{EMACS_HOME}}%$SCRIPT_HOME% .bash_profile-springbok > .bash_profile
pushd ~
ln -sf $SCRIPT_HOME/.bash_profile .bash_profile
popd
