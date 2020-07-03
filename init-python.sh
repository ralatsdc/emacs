# Python

# System packages
if [[ "$OSTYPE" == 'darwin19' ]]; then
    sudo port install python37 +readline
    sudo port select --set python python37

    sudo port install py37-ipython
    sudo port select --set ipython py37-ipython

    sudo port install py37-pip
    sudo port select --set pip pip37

    sudo port install py37-virtualenv
    sudo port select --set virtualenv virtualenv37

    sudo port install py37-virtualenvwrapper
    
    sudo port install py37-flake8
    port select --set flake8 flake8-37
    port select --set pyflakes py37-pyflakes

    sudo port install py37-pylint
    sudo port select --set pylint pylint37
    
    sudo port install py37-pkgconfig

elif [[ "$OSTYPE" == 'linux-gnu' ]]; then
    sudo apt-get install python3.7
    # ipython?
    sudo apt-get install python-pip
    sudo apt-get install python-virtualenv
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
sudo -H pip install black

# black link
sudo ln -s /opt/local/Library/Frameworks/Python.framework/Versions/3.7/bin/black black

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
