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

elif [[ "$OSTYPE" == 'linux-gnu' ]]; then
    sudo apt-get install python2.7
    sudo apt-get install python-pip
    sudo apt-get install python-virtualenv
    sudo apt-get install virtualenvwrapper

else
    echo "Unexpected OS"
    exit 1

fi

# Python packages
sudo -H pip install epc
sudo -H pip install flake8
sudo -H pip install pylint
sudo -H pip install jedi
