;;;; Requirements

;; + Emacs >= 24

;;;; Package management

;; Packages repositories
(require 'package)
(package-initialize)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/"))
;; (add-to-list 'package-archives
;; 	     '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-refresh-contents)

;; Package functions
(defun install-if-needed (package)
  (unless (package-installed-p package)
    (package-install package)))

;; Packages
(setq to-install
      '(exec-path-from-shell))
(mapc 'install-if-needed to-install)
