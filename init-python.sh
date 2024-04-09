#!/bin/zsh

# Python

# System packages
if [[ "$OSTYPE" == 'darwin23.0' ]]; then
    sudo port install python310 +readline
    sudo port select --set python python310

    sudo port install py310-ipython
    sudo port select --set ipython py310-ipython

    sudo port install py310-pip
    sudo port select --set pip pip310

    # TODO: Remove?
    # sudo port install py310-virtualenv
    # sudo port select --set virtualenv virtualenv310

    # TODO: Remove?
    # sudo port install py310-virtualenvwrapper
    # sudo port select --set virtualenvwrapper virtualenvwrapper310
    
    sudo port install py310-black
    sudo port select --set black black310

    # TODO: Install using macOS python, or fix emacs path
    # sudo port install py310-flake8
    # sudo port select --set flake8 flake8-310
    # sudo port select --set pyflakes py310-pyflakes

    # TODO: Install using macOS python, or fix emacs path
    # sudo port install py310-pylint
    # sudo port select --set pylint pylint310
    
    sudo port install py310-pkgconfig

    # TODO: Install conda?

elif [[ "$OSTYPE" == 'linux-gnu' ]]; then
    sudo apt-get install python3.10
    # TODO: Install ipython?
    sudo apt-get install python-pip
    # TODO: Remove?
    sudo apt-get install python-virtualenv
    # TODO: Remove?
    sudo apt-get install virtualenvwrapper
    sudo apt-get install python-flake8
    sudo apt-get install pylint
    sudo apt-get install pkg-config

else
    echo "Unexpected OS"
    exit 1

fi

# Python packages
sudo -H pip install epc
sudo -H pip install jedi

# blacken installation
# See: https://github.com/pythonic-emacs/blacken
if [ ! -e ~/.emacs.d/blacken ]; then
    set -e
    pushd ~/.emacs.d
    git clone git@github.com:pythonic-emacs/blacken.git
    popd
fi

# Setup Pylint
SCRIPT_HOME="${0:a:h}"
pushd ~
ln -sf $SCRIPT_HOME/.pylintrc-default .pylintrc
popd
