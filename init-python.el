;;;; Python

;; Packages
(setq to-install
      '(async python-mode jedi pyvenv))
(mapc 'install-if-needed to-install)
