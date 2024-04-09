#!/bin/zsh

EMACS_HOME="${0:a:h}"

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
sed s%{{HOME}}%$HOME% .zshrc-springbok > .zshrc
sed s%{{HOME}}%$HOME% .zshenv-springbok > .zshenv
pushd ~
ln -sf $EMACS_HOME/.zshrc .zshrc
mkdir -p bin
pushd ./bin
# ln -sf $EMACS_HOME/cd-activate cd-activate
ln -sf $EMACS_HOME/setup-python-development.py setup-python-development.py
popd
popd
