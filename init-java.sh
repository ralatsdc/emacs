# Java

# System packages
sudo port install maven3
sudo port select --set maven maven3

# See: https://github.com/jdee-emacs/jdee-server
set -e
pushd ~/.emacs.d
git clone https://github.com/jdee-emacs/jdee-server.git
pushd jdee-server
mvn -Dmaven.test.skip=true assembly:assembly
popd
popd
