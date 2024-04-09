#!/bin/zsh

# Clojure

# System packages
if [[ "$OSTYPE" == 'darwin23.0' ]]; then
    # See: https://en.wikibooks.org/wiki/Clojure_Programming/Getting_Started#Using_MacPorts
    sudo port install clojure +rlwrap

elif [[ "$OSTYPE" == 'linux-gnu' ]]; then
    # TODO: Complete
    echo
    echo ">>> Clojure initialization incomplete!"
    echo
    sudo apt-get install clojure1.2

else
    echo "Unexpected OS"
    exit 1

fi

# Clj-kondo installation
# See: https://github.com/clj-kondo/clj-kondo/blob/master/doc/install.md
curl -sLO https://raw.githubusercontent.com/clj-kondo/clj-kondo/master/script/install-clj-kondo
chmod +x install-clj-kondo
sudo ./install-clj-kondo
