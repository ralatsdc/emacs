# Python

# System packages
if [[ "$OSTYPE" == 'darwin19' ]]; then
    sudo port install python38 +readline
    sudo port select --set python python38

    sudo port install py38-ipython
    sudo port select --set ipython py38-ipython

    sudo port install py38-pip
    sudo port select --set pip pip38

    sudo port install py38-virtualenv
    sudo port select --set virtualenv virtualenv38

    sudo port install py38-virtualenvwrapper
    
    sudo port install py38-flake8
    sudo port select --set flake8 flake8-38
    sudo port select --set pyflakes py38-pyflakes

    sudo port install py38-pylint
    sudo port select --set pylint pylint38
    
    sudo port install py38-pkgconfig

elif [[ "$OSTYPE" == 'linux-gnu' ]]; then
    sudo apt-get install python3.8
    sudo apt-get install python3-flake8
    sudo apt-get install python3-ipython
    sudo apt-get install python3-pip
    sudo apt-get install python3-virtualenv
    sudo apt-get install pylint3
    sudo apt-get install virtualenvwrapper

else
    echo "Unexpected OS"
    exit 1

fi

# Python packages
if [[ "$OSTYPE" == 'darwin19' ]]; then
    sudo -H pip install epc
    sudo -H pip install jedi
    sudo -H pip install black

elif [[ "$OSTYPE" == 'linux-gnu' ]]; then
    pip3 install epc
    pip3 install jedi
    pip3 install black
    pip3 install flake8

fi

# black link
if [[ "$OSTYPE" == 'darwin19' ]]; then
    sudo ln -sf /opt/local/Library/Frameworks/Python.framework/Versions/3.8/bin/black black

elif [[ "$OSTYPE" == 'linux-gnu' ]]; then
    ln -sf ~/.local/bin/black black

fi
    
# blacken installation
# See: https://github.com/pythonic-emacs/blacken
if [ ! -e ~/.emacs.d/blacken ]; then
    set -e
    pushd ~/.emacs.d
    git clone git@github.com:pythonic-emacs/blacken.git
    popd
fi

# Setup Pylint
SCRIPT_HOME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd ~
ln -sf $SCRIPT_HOME/.pylintrc-default .pylintrc
popd
