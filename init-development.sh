# Development

# System packages
if [[ "$OSTYPE" == 'darwin21' ]]; then
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

# TODO: Remove when unneeded
echo
echo ">>> Helm might need a fix!"
echo "    See: https://github.com/emacs-helm/helm/commit/78cad8558691063eed7577799969c3caaa274015"
echo
