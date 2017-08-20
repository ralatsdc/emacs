SCRIPT_HOME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Setup Python and JavaScript development
$SCRIPT_HOME/init-emacs.sh
$SCRIPT_HOME/init-development.sh
$SCRIPT_HOME/init-python.sh
$SCRIPT_HOME/init-javascript.sh

# Create a link for node's http-server
pushd ~/Public
ln -s ~/Projects/Addgene/sequence-viewer/src/analyzer analyzer
popd
