;;;; Java

;; Packages
(setq to-install
      '(memoize dash jdee))
(mapc 'install-if-needed to-install)
