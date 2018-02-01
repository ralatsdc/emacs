# Java

# System packages
if [[ "$OSTYPE" == 'darwin16' ]]; then
    sudo port install maven3
    sudo port select --set maven maven3

elif [[ "$OSTYPE" == 'linux-gnu' ]]; then
    sudo apt-get install maven3
    
else
    echo "Unexpected OS"
    exit 1
    
fi

# JDEE server installation
# See: https://github.com/jdee-emacs/jdee-server
if [ ! -e ~/.emacs.d/jdee-server ]; then
    set -e
    pushd ~/.emacs.d
    git clone https://github.com/jdee-emacs/jdee-server.git
    pushd jdee-server
    mvn -Dmaven.test.skip=true package
    JAR=`ls target/*-bundle-*.jar`
    mkdir jars
    cp $JAR jars/jdee-bundle.jar
    popd
    popd
fi

# Eclim installation
# See: http://eclim.org
if [ ! -e ~/.emacs.d/Eclim ]; then
    set -e
    mkdir -p $HOME/.vim
    pushd ~/.emacs.d
    mkdir -p Eclim
    pushd Eclim
    wget https://github.com/ervandew/eclim/releases/download/2.7.1/eclim_2.7.1.bin
    chmod u+x eclim_2.7.1.bin
    if [ ! -e /Applications/Eclipse.app ]; then
	echo "Eclipse must be installed in order to install Eclim"
    else
	./eclim_2.7.1.bin \
	    --yes \
	    --eclipse=/Applications/Eclipse.app \
	    --vimfiles=$HOME/.vim \
	    --plugins=jdt
    fi
    popd
    popd
fi
