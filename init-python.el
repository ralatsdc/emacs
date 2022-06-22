;;;; Python

;; Packages
(setq to-install
      '(python-mode jedi pyvenv))
(mapc 'install-if-needed to-install)
