EMACS_HOME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Setup Python, JavaScript, MATLAB, Java, and R development
$EMACS_HOME/init-emacs.sh
$EMACS_HOME/init-development.sh
$EMACS_HOME/init-clojure.sh
$EMACS_HOME/init-go.sh
$EMACS_HOME/init-haskell.sh
$EMACS_HOME/init-java.sh
$EMACS_HOME/init-javascript.sh
$EMACS_HOME/init-matlab.sh
$EMACS_HOME/init-python.sh
$EMACS_HOME/init-r.sh
$EMACS_HOME/init-rust.sh
$EMACS_HOME/init-scala.sh
$EMACS_HOME/init-yaml.sh

# Setup Emacs
sed s%{{EMACS_HOME}}%$EMACS_HOME% init-springbok.el > init.el
sed s%{{EMACS_HOME}}%$EMACS_HOME% .emacs-springbok.el > .emacs
sed s%{{HOME}}%$HOME% .emacs-fini-springbok.el > .emacs-fini.el
pushd ~
ln -sf $EMACS_HOME/.emacs .emacs
popd

# Setup Bash
sed s%{{HOME}}%$HOME% .bash_profile-springbok > .bash_profile
pushd ~
ln -sf $EMACS_HOME/.bash_profile .bash_profile
pushd ./bin
ln -sf $EMACS_HOME/cd-workon cd-workon
popd
popd
