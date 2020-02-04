;;; conf for editing html js css

(use-package web-mode
  :ensure t
  :mode ("\\.html$" . web-mode)
  :init
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-enable-auto-pairing t)
  (setq web-mode-enable-auto-expanding t)
  (setq web-mode-enable-css-colorization t))

(use-package htmlize
  :ensure t
  :defer t)

(use-package js2-mode
  :mode "\\.js\\'"
  :config
  (setq-default js-indent-level 2)
  (setq-default js2-ignored-warnings '("msg.extra.trailing.comma")))

(provide 'init-web)

