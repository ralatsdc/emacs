;;;; Development

;; Packages
(setq to-install
      '(use-package auto-complete flycheck helm helm-ag magit yasnippet))
(mapc 'install-if-needed to-install)
