
;;;; Package management

;; Packages
(require 'package)

;; package setup
(package-initialize)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/") t)
;; (package-refresh-contents)

;;;; Development

;; Packages
(require 'yasnippet)
(require 'auto-complete)
(require 'autopair)
(require 'flycheck)
(require 'magit)

;; Yasnippet setup
;; None required

;; Auto-complete setup
;; TODO: Sort this setup
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)
(ac-set-trigger-key "TAB")
(ac-set-trigger-key "<tab>")
(setq
 ac-auto-start 2
 ac-override-local-map nil
 ac-use-menu-map t
 ac-candidate-limit 20)

;; Autopair setup
;; None required

;; Flycheck setup
(global-flycheck-mode t)

;; Magit setup
(global-set-key "\C-xg" 'magit-status)

;;;; Python

;; Packges for development
(require 'python-mode)
(require 'jedi)

;; python-mode setup
(add-to-list 'auto-mode-alist '("\\.py$" . python-mode))
(setq py-electric-colon-active t)
(add-hook 'python-mode-hook 'yas-minor-mode)
(add-hook 'python-mode-hook 'auto-complete-mode)
(add-hook 'python-mode-hook 'autopair-mode)

;; Jedi setup
(add-hook 'python-mode-hook (lambda () (jedi:setup)))
(setq jedi:complete-on-dot t)

;; pdb setup
;; Note the Python version
(setq pdb-path '/System/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/pdb.py
      gud-pdb-command-name (symbol-name pdb-path))
(defadvice pdb (before gud-query-cmdline activate)
  "Provide a better default command line when called interactively."
  (interactive
   (list (gud-query-cmdline pdb-path
			    (file-name-nondirectory buffer-file-name)))))
;; Ensure local Python libraries can be found
;; (setenv "PYTHONPATH" (concat "~/Projects/Blue-Peninsula/bp-content/local/lib/python2.7:" (getenv "PYTHONPATH")))
(setenv "PYTHONPATH" "~/Projects/Blue-Peninsula/bp-content/local/lib/python2.7")

;;;; JavaScript

;; Packages
(require 'js2-mode)
(require 'ac-js2)
(require 'web-beautify)
(require 'tern)
(require 'tern-auto-complete)

;; js-mode setup
(add-to-list 'auto-mode-alist '("\\.json$" . js-mode))
(add-hook 'js-mode-hook 'js2-minor-mode)
(add-hook 'js-mode-hook 'yas-minor-mode)
(add-hook 'js2-mode-hook 'ac-js2-mode)
;; (setq js2-highlight-level 3)

;; Tern setup
(add-hook 'js-mode-hook (lambda () (tern-mode t)))
(add-hook 'js-mode-hook 'auto-complete-mode)
(eval-after-load 'tern
  '(progn
     (require 'tern-auto-complete)
     (tern-ac-setup)))
(defun delete-tern-process ()
  (interactive)
  (delete-process "Tern"))

;;;; R

;; Packages
(require 'ess-site)

;;;; MIT/GNU Scheme

;; Packages
(require 'xscheme)

;; xcheme setup
(setq scheme-program-name "/Applications/mit-scheme.app/Contents/Resources/mit-scheme")

;;;; MATLAB

;; Packages
(add-to-list 'load-path "~/.emacs.d/matlab-emacs")
(require 'matlab-load)

;; matlab-emacs setup
;; None required

;;;; Emacs

;; Custom variables
;; TODO: Sort these variables
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(dired-use-ls-dired nil)
 '(ess-default-style (quote DEFAULT))
 '(ess-keep-dump-files "always")
 '(ess-use-auto-complete t)
 '(indent-tabs-mode nil)
 '(inferior-ess-client-command "Initial")
 '(inferior-ess-client-name "Initial")
 '(inferior-ess-ddeclient "Initial")
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Path setup
(setenv "PATH" (concat "/opt/local/bin:" (getenv "PATH")))
(setq exec-path (append '("/opt/local/bin") exec-path))
(setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))
(setq exec-path (append '("/usr/local/bin") exec-path))

;; dired setup
(setq default-directory "/Users/raymondleclair/Projects")

;; ido setup
(ido-mode t)

;; ispell setup
(setq ispell-program-name "/opt/local/bin/aspell")

;; abbrev-mode setup
(setq abbrev-file-name "~/.emacs.d/abbrev_defs")
