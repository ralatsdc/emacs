(setq emacs-home (file-name-as-directory "{{EMACS_HOME}}"))

;; Load packages for Python, JavaScript, MATLAB, Java, and R
;; development
(load (concat emacs-home ".emacs-init.el"))
(load (concat emacs-home ".emacs-development.el"))
(load (concat emacs-home ".emacs-python.el"))
(load (concat emacs-home ".emacs-javascript.el"))
(load (concat emacs-home ".emacs-matlab.el"))
(load (concat emacs-home ".emacs-java.el"))
(load (concat emacs-home ".emacs-r.el"))
(load (concat emacs-home ".emacs-scala.el"))
(load (concat emacs-home ".emacs-yaml.el"))
(load (concat emacs-home ".emacs-fini.el"))

(custom-set-variables
 ;; Your init file should contain only one custom-set-variables instance.
 ;; If there is more than one, they won't work right.
 '(dired-use-ls-dired nil)
 '(default-fill-column 120)
 '(electric-pair-mode 1)
 '(ess-default-style (quote DEFAULT))
 '(ess-keep-dump-files "always")
 '(ess-use-auto-complete t)
 '(js-indent-level 4)
 '(indent-tabs-mode nil)
 '(inferior-ess-client-command "Initial")
 '(inferior-ess-client-name "Initial")
 '(inferior-ess-ddeclient "Initial")
 '(inhibit-startup-screen t)
 '(matlab-indent-level 4)
 '(package-selected-packages
   (quote
    (flycheck auto-complete async exec-path-from-shell helm-ag helm yasnippet web-beautify tern python-mode magit js2-mode jedi))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
