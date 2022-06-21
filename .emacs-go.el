;;;; Go

;; Packages required
(require 'go-mode)

;; Go-mode setup
;; https://github.com/rust-lang/rust-mode
;; (add-to-list 'load-path "~/.emacs.d/elpa/go-mode-1.6.0")
(autoload 'go-mode "go-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode))
