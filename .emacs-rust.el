;;;; Rust

;; Packages required
(require 'rust-mode)
(require 'flycheck-rust)

;; Rust-mode setup
;; See: https://github.com/rust-lang/rust-mode
;; (add-to-list 'load-path "~/.emacs.d/elpa/rust-mode-1.0.4")
;; (autoload 'rust-mode "rust-mode" nil t)
;; (add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))
(add-hook 'rust-mode-hook 'cargo-minor-mode)

;; Flycheck-rust setup
;; See: https://github.com/flycheck/flycheck-rust
(with-eval-after-load 'rust-mode
  (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))
