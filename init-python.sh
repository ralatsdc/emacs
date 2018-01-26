# Python

# System packages
if [[ "$OSTYPE" == 'darwin16' ]]; then
    sudo port install python27 +readline
    sudo port select --set python python27

    sudo port install py27-ipython
    sudo port select --set ipython py27-ipython

    sudo port install py27-pip
    sudo port select --set pip pip27

    sudo port install py27-virtualenv
    sudo port select --set virtualenv virtualenv27

    sudo port install py27-virtualenvwrapper
    
    sudo port install py27-flake8
    port select --set flake8 flake8-27
    port select --set pyflakes py27-pyflakes

    sudo port install py27-pylint
    sudo port select --set pylint pylint27
    
    sudo port install py27-pkg-config

elif [[ "$OSTYPE" == 'linux-gnu' ]]; then
    sudo apt-get install python2.7
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

# Setup Pylint
SCRIPT_HOME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd ~
ln -sf $SCRIPT_HOME/.pylintrc-default .pylintrc
popd
