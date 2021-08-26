# Java

# System packages
if [[ "$OSTYPE" == 'darwin19' ]]; then
    sudo port install maven3
    sudo port select --set maven maven3

elif [[ "$OSTYPE" == 'linux-gnu' ]]; then
    sudo apt-get install maven
    
else
    echo "Unexpected OS"
    exit 1
    
fi
