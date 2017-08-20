SCRIPT_HOME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

$SCRIPT_HOME/init-emacs.sh
$SCRIPT_HOME/init-development.sh
$SCRIPT_HOME/init-python.sh
$SCRIPT_HOME/init-javascript.sh

pushd ~/Public
ln -s ~/Projects/Addgene/sequence-viewer/src/analyzer analyzer
popd
