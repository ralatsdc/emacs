# Python

# System packages
sudo port install python27
sudo port select --set python python27

sudo port install py27-pip
sudo port select --set pip pip27

sudo port install py27-virtualenv
sudo port select --set virtualenv virtualenv27

sudo port install py27-virtualenvwrapper

# Python packages
sudo -H pip install epc
sudo -H pip install flake8
sudo -H pip install pylint
sudo -H pip install jedi
