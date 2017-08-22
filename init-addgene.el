(setq emacs-home (file-name-as-directory "{{EMACS_HOME}}"))

;; Initialize packages required for Python and JavaScript development
(load (concat emacs-home "init-emacs.el"))
(load (concat emacs-home "init-development.el"))
(load (concat emacs-home "init-python.el"))
(load (concat emacs-home "init-javascript.el"))
