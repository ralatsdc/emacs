;;;; Rust

;; Packages
(setq to-install
      '(rust-mode flycheck-rust))
(mapc 'install-if-needed to-install)
