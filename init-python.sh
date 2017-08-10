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
sudo -H pip install jedi
sudo -H pip install epc
