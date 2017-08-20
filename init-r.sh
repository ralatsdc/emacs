# R

# System packages
sudo port install r

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
