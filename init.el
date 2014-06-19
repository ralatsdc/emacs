
;;;; Package management

;; Requirements:
;; + Emacs >= 24

;; Packages
(require 'package)

;; package setup
(package-initialize)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-refresh-contents)

;; Package functions
(defun install-if-needed (package)
  (unless (package-installed-p package)
    (package-install package)))

;;;; Development

;; Packages
(setq to-install
      '(yasnippet auto-complete autopair flycheck magit))
(mapc 'install-if-needed to-install)

;;;; Python

;; Requirements:
;; $ sudo pip install jedi
;; $ sudo pip install epc

;; Packages
(setq to-install
      '(python-mode jedi))
(mapc 'install-if-needed to-install)

;;;; JavaScript

;; Requirements:
;; $ sudo npm install -g js-beautify
;; $ sudo npm install -g tern
;; $ sudo npm install -g jshint

;; Packges for development
(setq to-install
      '(js2-mode ac-js2 web-beautify tern tern-auto-complete))
(mapc 'install-if-needed to-install)

;;;; R

;; Requirements:
;; $ cd ~/Packages
;; $ git clone https://github.com/emacs-ess/ESS.git
;; $ cd ESS
;; $ make
;; # make install
;; See: http://ess.r-project.org/Manual/ess.html

;;;; MIT/GNU Scheme

;; Requirements:
;; + MIT/GNU Scheme
;; See: http://www.gnu.org/software/mit-scheme/

;;;; MATLAB

;; Requirements
;; $ cd ~/.emacs.d
;; $ cvs -d:pserver:anonymous@matlab-emacs.cvs.sourceforge.net:/cvsroot/matlab-emacs login
;; $ cvs -z3 -d:pserver:anonymous@matlab-emacs.cvs.sourceforge.net:/cvsroot/matlab-emacs co -P matlab-emacs
;; $ cd matlab-emacs
;; $ make
;; See: http://matlab-emacs.sourceforge.net/

;;;; Emacs

;; Requirements:
;; $ sudo port install aspell
