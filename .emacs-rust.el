;;;; Rust

;; Packages required
(require 'rust-mode)
(require 'flycheck-rust)

;; Rust-mode setup
;; https://github.com/rust-lang/rust-mode
;; (add-to-list 'load-path "~/.emacs.d/elpa/rust-mode-1.0.4")
(autoload 'rust-mode "rust-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

;; Flycheck-rust setup
;; https://github.com/flycheck/flycheck-rust
(with-eval-after-load 'rust-mode
  (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))
