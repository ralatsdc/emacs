;;;; Development

;; Packages
(setq to-install
      '(use-package async auto-complete flycheck helm helm-ag magit yasnippet))
(mapc 'install-if-needed to-install)
