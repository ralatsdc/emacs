(setq emacs-home (file-name-as-directory (getenv "EMACS_HOME")))

;; Initialize packages required for Python, JavaScript, MATLAB, Java,
;; and R development
(load (concat emacs-home "init-emacs.el"))
(load (concat emacs-home "init-development.el"))
(load (concat emacs-home "init-python.el"))
(load (concat emacs-home "init-javascript.el"))
(load (concat emacs-home "init-matlab.el"))
(load (concat emacs-home "init-java.el"))
(load (concat emacs-home "init-r.el"))
