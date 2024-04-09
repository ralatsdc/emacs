#!/bin/zsh

# Java

# System packages
if [[ "$OSTYPE" == 'darwin23.0' ]]; then
    sudo port install openjdk11
    sudo port install maven3
    sudo port select --set maven maven3

elif [[ "$OSTYPE" == 'linux-gnu' ]]; then
    sudo apt-get install openjdk11
    sudo apt-get install maven3

else
    echo "Unexpected OS"
    exit 1

fi
