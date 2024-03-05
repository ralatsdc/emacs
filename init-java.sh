# Java

# System packages
if [[ "$OSTYPE" == 'darwin21' ]]; then
    sudo port install openjdk8
    sudo port install maven3
    sudo port select --set maven maven3

elif [[ "$OSTYPE" == 'linux-gnu' ]]; then
    sudo apt-get install openjdk8
    sudo apt-get install maven3

else
    echo "Unexpected OS"
    exit 1
    
fi
