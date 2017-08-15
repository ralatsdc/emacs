# MATLAB

# System packages
# None required

# Matlab-emacs installation
# See: https://sourceforge.net/p/matlab-emacs/src/ci/master/tree/
set -e
pushd ~/.emacs.d
git clone https://git.code.sf.net/p/matlab-emacs/src matlab-emacs-src
pushd matlab-emacs-src
make
popd
popd
