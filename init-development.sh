# Development

# System packages
if [[ "$OSTYPE" == 'darwin19' ]]; then
    sudo port install aspell
    sudo port install aspell-dict-en
    sudo port install the_silver_searcher

elif [[ "$OSTYPE" == 'linux-gnu' ]]; then
    sudo apt-get install aspell
    sudo apt-get install aspell-en
    sudo apt-get install silversearcher-ag

else
    echo "Unexpected OS"
    exit 1

fi
