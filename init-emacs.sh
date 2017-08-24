# Emacs

# System packages
if [[ "$OSTYPE" == 'darwin16' ]]; then
    sudo port install emacs-app
    sudo port install emacs-devel

elif [[ "$OSTYPE" == 'linux-gnu' ]]; then
    sudo apt-get install emacs24

else
    echo "Unexpected OS"
    exit 1

fi

# Abbrev-mode prerequisite
touch ~/.emacs.d/abbrev_defs
