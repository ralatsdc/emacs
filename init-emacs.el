;;;; Requirements

;; + Emacs >= 24

;;;; Package management

;; Packages repositories
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
(package-refresh-contents)

;; Package functions
(defun install-if-needed (package)
  (unless (package-installed-p package)
    (package-install package)))

;; Packages
(setq to-install
      '(exec-path-from-shell))
(mapc 'install-if-needed to-install)
