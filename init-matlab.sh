# MATLAB

# See: http://matlab-emacs.sourceforge.net/
set -e
pushd ~/.emacs.d
cvs -d:pserver:anonymous@matlab-emacs.cvs.sourceforge.net:/cvsroot/matlab-emacs login
cvs -z3 -d:pserver:anonymous@matlab-emacs.cvs.sourceforge.net:/cvsroot/matlab-emacs co -P matlab-emacs
pushd matlab-emacs
touch Makefile
make
popd
popd
