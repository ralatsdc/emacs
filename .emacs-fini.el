;;;; Emacs

;; Path setup
(setenv "PATH" (concat "/home/rleclair/.local/bin:" (getenv "PATH")))
(setq exec-path (append '("/home/rleclair/.local/bin") exec-path))
(setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))
(setq exec-path (append '("/usr/local/bin") exec-path))

;; Frame setup
(setq initial-frame-alist
      '((top . 1) (left . 177) (width . 130) (height . 65)))

;; Dired setup
(setq default-directory "/home/rleclair/Projects")

;; Ido setup
;; (ido-mode t)

;; Ispell setup
(setq ispell-program-name "/usr/bin/aspell")

;; Abbrev-mode setup
(setq abbrev-file-name "~/.emacs.d/abbrev_defs")
