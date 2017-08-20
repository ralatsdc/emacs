(setq emacs-home (file-name-as-directory (getenv "EMACS_HOME")))

(load (concat emacs-home "init-emacs.el"))
(load (concat emacs-home "init-development.el"))
(load (concat emacs-home "init-python.el"))
(load (concat emacs-home "init-javascript.el"))
