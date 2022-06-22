;;;; Python

;; Packages required
(require 'python-mode)
(require 'jedi)
(require 'pyvenv)

;; Packages loaded
;; See: https://github.com/pythonic-emacs/blacken
(add-to-list 'load-path "~/.emacs.d/blacken")
(require 'blacken)

;; Python-mode setup
;; See: https://www.emacswiki.org/emacs/ProgrammingWithPythonModeDotEl
(autoload 'python-mode "python-mode" "Python Mode." t)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))

;; Jedi setup
;; See: http://tkf.github.io/emacs-jedi/latest/
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)
