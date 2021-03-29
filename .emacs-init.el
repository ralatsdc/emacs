;;;; Emacs

;;;; Requirements

;; + Emacs >= 24

;;;; Package management

;; Packages repositories
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
;; (package-refresh-contents)
