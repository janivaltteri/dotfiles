;;; -*- lexical-binding: t -*-

(use-package clojure-mode
  :ensure t
  :defer t
  :mode ("\\.clj\\'"  . clojure-mode)
	("\\.cljs\\'" . clojure-mode)
	("\\.cljc\\'" . clojure-mode))

(use-package cider
  :ensure t
  :defer t
  :after clojure-mode
  :config
  (add-hook 'clojure-mode-hook #'rainbow-delimiters-mode))

(use-package gnuplot-mode
  :ensure t
  :defer t)

(use-package slime
  :ensure t
  :config
  (setq inferior-lisp-program "/usr/bin/sbcl"))

(provide 'init-languages)
