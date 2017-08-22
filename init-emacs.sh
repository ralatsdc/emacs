# Emacs

# System packages
sudo port install emacs-app
sudo port install emacs-devel

# Abbrev-mode prerequisite
touch ~/.emacs.d/abbrev_defs

# Set environment for applications launched from the Finder (Mac OS X)
# See: http://www.dowdandassociates.com/blog/content/howto-set-an-environment-variable-in-mac-os-x-launchd-plist/
set -e
pushd $SCRIPT_HOME
sed s:{{EMACS_HOME}}:$EMACS_HOME: org.gnu.emacs.plist > org.gnu.emacs.plist.1
sudo mv org.gnu.emacs.plist.1 /Library/LaunchDaemons/org.gnu.emacs.plist
launchctl load org.gnu.emacs.plist
popd
