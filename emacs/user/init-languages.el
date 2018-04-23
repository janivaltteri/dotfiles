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

(use-package haskell-mode
  :ensure t
  :mode "\\.hs\\'"
  :commands haskell-mode
  :bind ("C-c C-s" . fix-imports)
  :config
  (custom-set-variables
   '(haskell-ask-also-kill-buffers nil)
   '(haskell-process-type (quote stack-ghci))
   '(haskell-interactive-popup-errors nil))
  (add-hook 'haskell-mode-hook 'haskell-indentation-mode)
  (add-hook 'haskell-mode-hook 'interactive-haskell-mode)
  (add-hook 'haskell-mode-hook 'flycheck-mode)
  (add-hook 'haskell-mode-hook 'hindent-mode)
  (add-hook 'haskell-mode-hook (lambda ()
                                 (add-hook 'before-save-hook 'haskell-mode-format-imports nil 'local))))

(use-package julia-mode
  :ensure t
  :defer t
  :mode "\\.jl\\'")

(use-package julia-repl
  :ensure t
  :defer t
  ;; :hook julia-mode
  :bind (("C-c C-c" . julia-repl-send-region-or-line)
         ("C-c C-b" . julia-repl-send-buffer)
         ("C-c C-z" . julia-repl)
         ("<C-return>" . julia-repl-send-line)
         ("C-c C-e" . julia-repl-edit)
         ("C-c C-d" . julia-repl-doc)
         ("C-c C-w" . julia-repl-workspace)
	 ("C-c C-m" . julia-repl-macroexpand)))

(use-package slime
  :ensure t
  :config
  (setq inferior-lisp-program "/usr/bin/sbcl"))

(provide 'init-languages)
