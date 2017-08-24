# JavaScript

# System packages
if [[ "$OSTYPE" == 'darwin16' ]]; then
    sudo port install nodejs8
    sudo port install npm5

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
