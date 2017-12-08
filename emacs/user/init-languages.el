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

(use-package julia-mode
  :ensure t
  :defer t)

(use-package julia-shell
  :ensure t
  :defer t
  :config
  (defun my-julia-mode-hooks ()
    (require 'julia-shell-mode))
  (add-hook 'julia-mode-hook 'my-julia-mode-hooks)
  (define-key julia-mode-map (kbd "C-c C-c") 'julia-shell-run-region-or-line)
  (define-key julia-mode-map (kbd "C-c C-s") 'julia-shell-save-and-go))

(use-package slime
  :ensure t
  :config
  (setq inferior-lisp-program "/usr/bin/sbcl"))

(provide 'init-languages)
