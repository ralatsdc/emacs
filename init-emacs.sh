# Emacs

# System packages
if [[ "$OSTYPE" == 'darwin16' ]]; then
    sudo port install emacs-app
    sudo port install emacs-devel

elif [[ "$OSTYPE" == 'linux-gnu' ]]; then
    sudo apt-get install software-properties-common 
    sudo add-apt-repository ppa:ubuntu-elisp/ppa
    sudo apt-get update
    sudo apt-get install emacs-snapshot
    sudo update-alternatives --config emacs

else
    echo "Unexpected OS"
    exit 1

fi

# Abbrev-mode prerequisite
touch ~/.emacs.d/abbrev_defs
