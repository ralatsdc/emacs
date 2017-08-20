(package-initialize)

(setq emacs-home (file-name-as-directory (getenv "EMACS_HOME")))

(load (concat emacs-home ".emacs-init.el"))

(load (concat emacs-home ".emacs-development.el"))
(load (concat emacs-home ".emacs-python.el"))
(load (concat emacs-home ".emacs-javascript.el"))
(load (concat emacs-home ".emacs-matlab.el"))
(load (concat emacs-home ".emacs-java.el"))
(load (concat emacs-home ".emacs-r.el"))

(load (concat emacs-home ".emacs-fini.el"))

(load "/Users/raymondleclair/Projects/Development/emacs/.emacs-fini.el")
