;;;; YAML

;; Packages
(add-to-list 'load-path "~/.emacs.d/yaml-mode")
(require 'yaml-mode)

;; yaml-mode setup
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.cwl\\'" . yaml-mode))
