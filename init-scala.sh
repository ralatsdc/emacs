# Scala

# System packages
if [[ "$OSTYPE" == 'darwin17' ]]; then
    sudo port install sbt

elif [[ "$OSTYPE" == 'linux-gnu' ]]; then
    # TODO: Complete
    echo "Not implemented"

else
    echo "Unexpected OS"
    exit 1

fi
