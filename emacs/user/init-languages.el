;;; -*- lexical-binding: t -*-

;; (use-package clojure-mode
;;   :ensure t
;;   :defer t
;;   :mode ("\\.clj\\'"  . clojure-mode)
;; 	("\\.cljs\\'" . clojure-mode)
;; 	("\\.cljc\\'" . clojure-mode))

;; (use-package cider
;;   :ensure t
;;   :defer t
;;   :after clojure-mode
;;   :config
;;   (add-hook 'clojure-mode-hook #'rainbow-delimiters-mode))

(use-package arduino-mode
  :ensure t
  :defer t)

(use-package d-mode
  :ensure t
  :defer t
  :mode "\\.d\\'")

(use-package graphviz-dot-mode
  :ensure t
  :defer t
  :mode "\\.dot\\'")

(use-package racket-mode
  :ensure t
  :defer t)

;;(use-package geiser
;;  :ensure t
;;  :defer t
;;  :config
;;  (progn
;;   (add-hook 'scheme-mode-hook 'geiser-mode)
;;   (setq geiser-active-implementations '(racket))
;;   (setq geiser-default-implementation 'racket)))

;;(use-package geiser :ensure t)

;; Scheme
;;(defun my-scheme-mode-setup ()
;;  "λ..."
;;  (paredit-mode t)
;;  (ac-geiser-setup))

;;(use-package scheme :defer t
;;  :hook ((geiser-mode-hook . my/scheme-mode-hook)
;;         (scheme-mode-hook . my/scheme-mode-hook))
;;  :custom
;;  (geiser-active-implementations '(guile racket)))

(use-package gnuplot
  :ensure t
  :defer t)

(use-package gnuplot-mode
  :ensure t
  :defer t
  :mode "\\.gnuplot\\'"
  :config
  (el-get 'sync 'gnuplot-mode))

(use-package hy-mode
  :ensure t
  :defer t)

(use-package julia-mode
  :ensure t
  :defer t
  :mode "\\.jl\\'")

(use-package julia-repl
  :ensure t
  :defer t
  :hook julia-mode)

;;  :bind (("C-c C-c" . julia-repl-send-region-or-line)
;;         ("C-c C-b" . julia-repl-send-buffer)
;;         ("C-c C-z" . julia-repl)
;;         ("<C-return>" . julia-repl-send-line)
;;         ("C-c C-e" . julia-repl-edit)
;;         ("C-c C-d" . julia-repl-doc)
;;         ("C-c C-w" . julia-repl-workspace)
;;  	 ("C-c C-m" . julia-repl-macroexpand))
;;  :mode "\\.jl\\'")

(use-package maxima
  :ensure nil
  :load-path "/usr/share/emacs/site-lisp/maxima"
  :commands (maxima)
  :mode ("\\.ma[cx]" . maxima-mode))

(use-package pov-mode
  :ensure t
  :defer t)

(use-package slime
  :ensure t
  :config
  (setq inferior-lisp-program "/usr/bin/sbcl"))

(provide 'init-languages)

