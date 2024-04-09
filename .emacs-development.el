;;;; Development

;; Packages required
(require 'auto-complete)
(require 'flycheck)
;; TODO: Remove?
;; (require 'helm-config)
(require 'magit)
(require 'yasnippet)

;; Auto-complete setup
;; See: https://github.com/auto-complete/auto-complete/blob/master/doc/manual.md
(ac-config-default)

;; Flycheck setup
;; See: http://www.flycheck.org/en/latest/user/quickstart.html
(add-hook 'after-init-hook #'global-flycheck-mode)

;; Helm setup
;; See: https://emacs-helm.github.io/helm/
(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x C-f") #'helm-find-files)
(helm-mode 1)

;; Magit setup
;; See: https://magit.vc/manual/magit.html#Status-Buffer
(global-set-key (kbd "C-x g") 'magit-status)

;; Yasnippet setup
;; See: https://github.com/joaotavora/yasnippet
(yas-global-mode 1)
