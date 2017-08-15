;;;; JavaScript

;; Packages required
(require 'js2-mode)
(require 'tern)
(require 'web-beautify)

;; Js2-mode setup
;; See: https://elpa.gnu.org/packages/js2-mode.html
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; Tern setup
;; See: http://ternjs.net/doc/manual.html#emacs
(add-hook 'js-mode-hook (lambda () (tern-mode t)))

;; Web-beautify setup
;; See: https://github.com/yasuyk/web-beautify
(eval-after-load 'js2-mode
  '(define-key js2-mode-map (kbd "C-c b") 'web-beautify-js))
(eval-after-load 'json-mode
  '(define-key json-mode-map (kbd "C-c b") 'web-beautify-js))
(eval-after-load 'sgml-mode
  '(define-key html-mode-map (kbd "C-c b") 'web-beautify-html))
(eval-after-load 'web-mode
  '(define-key web-mode-map (kbd "C-c b") 'web-beautify-html))
(eval-after-load 'css-mode
  '(define-key css-mode-map (kbd "C-c b") 'web-beautify-css))
