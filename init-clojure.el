;;;; Clojure

;; Packages
;; (setq to-install
;;       '(clojure-mode cider inf-clojure flycheck-clojure))
(setq to-install
      '(clojure-mode cider inf-clojure flycheck-clj-kondo))
(mapc 'install-if-needed to-install)
