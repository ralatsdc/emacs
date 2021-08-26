# Emacs

# System packages
if [[ "$OSTYPE" == 'darwin19' ]]; then
    sudo port install emacs-app
    sudo port install emacs-devel

elif [[ "$OSTYPE" == 'linux-gnu' ]]; then
    sudo add-apt-repository ppa:kelleyk/emacs
    sudo apt install emacs27
    update-alternatives --query emacs

else
    echo "Unexpected OS"
    exit 1

fi

# Abbrev-mode prerequisite
touch ~/.emacs.d/abbrev_defs
