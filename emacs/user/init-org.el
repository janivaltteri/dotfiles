;;; -*- lexical-binding: t -*-

(use-package org
  :ensure t
  :defer t
  :mode ("\\.org$" . org-mode)
  :config
  (setq org-log-done 'time))

(use-package ox-latex
  :ensure t
  :defer t
  :after org
  :config
  (unless (boundp 'org-latex-classes)
    (setq org-latex-classes nil))
  (add-to-list 'org-latex-classes
	       '("article"
		 "\\documentclass{article}"
		 ("\\section{%s}" . "\\section*{%s}"))))

(use-package evil-org
  :ensure t
  :defer t
  :after org evil
  :config
  (add-hook 'org-mode-hook 'evil-org-mode)
  (add-hook 'evil-org-mode-hook
	    (lambda () (evil-org-set-key-theme))))

(provide 'init-org)
