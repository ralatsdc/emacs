#!/bin/zsh

# JavaScript

# System packages
if [[ "$OSTYPE" == 'darwin21' ]]; then
    sudo port install nodejs19
    sudo port install npm9

elif [[ "$OSTYPE" == 'linux-gnu' ]]; then
    sudo apt-get install nodejs
    sudo apt-get install npm

else
    echo "Unexpected OS"
    exit 1

fi

# Node packages
sudo npm install -g http-server
sudo npm install -g tern
sudo npm install -g jshint
sudo npm install -g js-beautify

# Setup JSHint and ESLint
SCRIPT_HOME="${0:a:h}"
pushd ~
ln -sf $SCRIPT_HOME/.jshintrc-default .jshintrc
ln -sf $SCRIPT_HOME/.eslintrc-google .eslintrc
popd
