;;;; Haskell

;; Packages required
;; (require 'haskell-mode)
(require 'haskell-mode)
(require 'flycheck-haskell)

;; Haskell-mode setup
;; See: https://github.com/haskell/haskell-mode
;; (add-to-list 'load-path "~/lib/emacs/haskell-mode/")
;; (require 'haskell-mode-autoloads)
;; (add-to-list 'Info-default-directory-list "~/lib/emacs/haskell-mode/")

;; Flycheck-haskell setup
;; See: https://github.com/flycheck/flycheck-haskell
(add-hook 'haskell-mode-hook #'flycheck-haskell-setup)
