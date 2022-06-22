;;;; Emacs

;; Path setup for ..
;; .. Go
(setenv "PATH" (concat "/usr/local/go/bin:" (getenv "PATH")))
(setq exec-path (append '("/usr/local/go/bin") exec-path))
;; .. Haskell
(setenv "PATH" (concat "~/.ghcp/bin:" (getenv "PATH")))
(setq exec-path (append '("~/.ghcp/bin") exec-path))
;; ... Local
(setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))
(setq exec-path (append '("/usr/local/bin") exec-path))
;; .. MacPorts
(setenv "PATH" (concat "/opt/local/bin:" (getenv "PATH")))
(setq exec-path (append '("/opt/local/bin") exec-path))
;; .. Rust
(setenv "PATH" (concat "~/.cargo/bin:" (getenv "PATH")))
(setq exec-path (append '("~/.cargo/bin") exec-path))
;; .. Scala
(setenv "PATH" (concat "/Users/raymondleclair/Library/Application Support/Coursier/bin/scala:" (getenv "PATH")))
(setq exec-path (append '("/Users/raymondleclair/Library/Application Support/Coursier/bin/scala") exec-path))

;; Frame setup
(setq initial-frame-alist
      '((top . 1) (left . 177) (width . 130) (height . 65)))

;; Dired setup
(setq default-directory "{{HOME}}/Projects")

;; Ido setup
;; (ido-mode t)

;; Ispell setup
(setq ispell-program-name "/opt/local/bin/aspell")

;; Abbrev-mode setup
(setq abbrev-file-name "~/.emacs.d/abbrev_defs")
