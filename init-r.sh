# R

# System packages
if [[ "$OSTYPE" == 'darwin16' ]]; then
    sudo port install r

elif [[ "$OSTYPE" == 'linux-gnu' ]]; then
    sudo apt-get install r-base
    
else
    echo "Unexpected OS"
    exit 1

fi

# ESS installation
# See: http://ess.r-project.org/Manual/ess.html#Installation
if [ ! -e ~/.emacs.d/ESS ]; then
    set -e
    pushd ~/.emacs.d
    git clone https://github.com/emacs-ess/ESS.git
    pushd ESS
    make
    popd
    popd
fi
