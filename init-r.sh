# R

# See: http://ess.r-project.org/Manual/ess.html#Installation
set -e
pushd ~/.emacs.d
git clone https://github.com/emacs-ess/ESS.git
pushd ESS
make
popd
popd
