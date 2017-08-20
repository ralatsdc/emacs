# Emacs

# System packages
sudo port install emacs-app
sudo port install emacs-devel

# Abbrev-mode prerequisite
mkdir -p ~/.emacs.d/abbrev_defs

# Set environment for applications launched from the Finder
set -e
launchctl setenv EMACS_HOME $EMACS_HOME
killall Dock
