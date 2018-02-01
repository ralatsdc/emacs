;;;; MATLAB

;; Packages
(add-to-list 'load-path "~/.emacs.d/matlab-emacs-src")
(require 'matlab-load)

;; Matlab-emacs setup
(setq matlab-indent-function-body t)
(setq fill-column 125)
