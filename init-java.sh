# Java

# System packages
sudo port install maven3
sudo port select --set maven maven3

# JDEE server installation
# See: https://github.com/jdee-emacs/jdee-server
if [ ! -e ~/.emacs.d/jdee-server ]; then
    set -e
    pushd ~/.emacs.d
    git clone https://github.com/jdee-emacs/jdee-server.git
    pushd jdee-server
    mvn -Dmaven.test.skip=true assembly:assembly
    JAR=`ls target/*-bundle-*.jar`
    mkdir jars
    cp $JAR jars/jdee-bundle.jar
    popd
    popd
fi
