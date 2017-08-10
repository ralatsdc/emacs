;;;; Python

;; Packages
(setq to-install
      '(async python-mode jedi))
(mapc 'install-if-needed to-install)
