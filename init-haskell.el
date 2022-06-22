;;;; Haskell

;; Packages
(setq to-install
      '(haskell-mode flycheck-haskell))
(mapc 'install-if-needed to-install)
