;;; -*- lexical-binding: t -*-

(use-package org
  :ensure t
  :defer t
  :mode ("\\.org$" . org-mode)
  :config
  (setq org-log-done 'time)
  (unless (boundp 'org-latex-classes)
    (setq org-latex-classes nil))
  (setq org-confirm-babel-evaluate nil)
  (setq org-highlight-latex-and-related '(latex))
  (add-to-list 'org-latex-classes
               '("jva-article"
                 "\\documentclass{article}"
                 ("\\section{%s}" . "\\section*{%s}")
                 ("\\subsection{%s}" . "\\subsection*{%s}")
                 ("\\subsubsection{%s}" . "\\subsubsection*{%s}"))))

(use-package evil-org
  :ensure t
  :defer t
  :after org evil
  :config
  (add-hook 'org-mode-hook 'evil-org-mode)
  (add-hook 'evil-org-mode-hook
	    (lambda () (evil-org-set-key-theme))))

(provide 'init-org)
