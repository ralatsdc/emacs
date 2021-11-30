;;;; Emacs

;; Path setup
(setenv "PATH" (concat "/opt/local/bin:" (getenv "PATH")))
(setq exec-path (append '("/opt/local/bin") exec-path))
(setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))
(setq exec-path (append '("/usr/local/bin") exec-path))

;; Frame setup
(setq initial-frame-alist
      '((top . 1) (left . 177) (width . 130) (height . 65)))

;; Dired setup
(setq default-directory "/Users/raymondleclair/Projects")

;; Ido setup
;; (ido-mode t)

;; Ispell setup
(setq ispell-program-name "/opt/local/bin/aspell")

;; Abbrev-mode setup
(setq abbrev-file-name "~/.emacs.d/abbrev_defs")
