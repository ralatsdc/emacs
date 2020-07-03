# Development

# System packages
if [[ "$OSTYPE" == 'darwin18' ]]; then
    sudo port install aspell
    sudo port install aspell-dict-en
    sudo port install the_silver_searcher

elif [[ "$OSTYPE" == 'linux-gnu' ]]; then
    sudo port install aspell
    sudo port install aspell-en
    sudo port install silversearcher-ag

else
    echo "Unexpected OS"
    exit 1

fi
