;;;; Scala

;; Packages
(setq to-install
      '(scala-mode sbt-mode lsp-mode lsp-metals lsp-ui))
(mapc 'install-if-needed to-install)
