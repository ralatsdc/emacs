# YAML

# System packages
# None required

# yaml-mode installation
# See: https://github.com/yoshiki/yaml-mode
if [ ! -e ~/.emacs.d/yaml-mode ]; then
    set -e
    pushd ~/.emacs.d
    git clone git@github.com:yoshiki/yaml-mode.git
    pushd yaml-mode
    make
    popd
    popd
fi
