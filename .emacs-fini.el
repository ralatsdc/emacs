;;;; Emacs

;; Custom variables
(custom-set-variables
 '(dired-use-ls-dired nil)
 '(electric-pair-mode 1)
 '(ess-default-style (quote DEFAULT))
 '(ess-keep-dump-files "always")
 '(ess-use-auto-complete t)
 '(indent-tabs-mode nil)
 '(inferior-ess-client-command "Initial")
 '(inferior-ess-client-name "Initial")
 '(inferior-ess-ddeclient "Initial")
 '(inhibit-startup-screen t)
 '(matlab-indent-level 2)
 )

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
;; (setq ispell-program-name "/opt/local/bin/aspell")

;; Abbrev-mode setup
(setq abbrev-file-name "~/.emacs.d/abbrev_defs")
