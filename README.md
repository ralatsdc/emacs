# Emacs

An editor-in-chief (EIC) is a publication's editorial leader, having final responsibility for all operations and policies.

# Installation

## Prerequisites

The default (Springbok) installation assumes the following packages have been installed manually:
+ [Java](https://www.java.com/en/)
+ [MacTeX](https://tug.org/mactex/mactex-download.html)
+ [R](https://cran.r-project.org/bin/macosx/)
+ [Vagrant](https://www.vagrantup.com/downloads.html)

All other dependencies are installed from MacPorts, or, in the case of MATLAB, R, and Java, from source, in the various Bash init scripts.

## Quickstart

1. Clone the emacs setup repository. The resulting directoryt is referred to as EMACS_HOME below.
```
$ git clone git@github.com:ralatsdc/emacs.git
```
2. Run the Bash init script `init-springbok.sh`, or equivalent.
```
$ $EMACS_HOME/init-springbok.sh
```
3. Launch Emacs and evaluate the Emacs Lisp init script `init.el`.
```
$ open -n -a Emacs $EMACS_HOME/init.el, or equivalent
M-x eval-buffer
```
4. TODO: Source the bash profile
