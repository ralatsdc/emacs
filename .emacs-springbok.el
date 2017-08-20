(setq emacs-home (file-name-as-directory (getenv "EMACS_HOME")))

;; Load packages for Python, JavaScript, MATLAB, Java, and R
;; development
(package-initialize)

(load (concat emacs-home ".emacs-init.el"))

(load (concat emacs-home ".emacs-development.el"))
(load (concat emacs-home ".emacs-python.el"))
(load (concat emacs-home ".emacs-javascript.el"))
(load (concat emacs-home ".emacs-matlab.el"))
(load (concat emacs-home ".emacs-java.el"))
(load (concat emacs-home ".emacs-r.el"))

(load (concat emacs-home ".emacs-fini.el"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
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
 '(jdee-server-dir "~/.emacs.d/jdee-server/jars")
 '(matlab-indent-level 2)
 '(package-selected-packages
   (quote
    (helm-ag helm yasnippet web-beautify tern python-mode magit js2-mode jedi jdee))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
