(eval-when-compile
  (require 'use-package))

(use-package auctex
  :ensure t
  :defer t)

(use-package ess
  :ensure t
  :defer t)	      

(use-package evil
  :ensure t
  :config
  (evil-mode 1))

(use-package evil-org
  :ensure t
  :defer t
  :after org
  :config
  (add-hook 'org-mode-hook 'evil-org-mode)
  (add-hook 'evil-org-mode-hook
	    (lambda () (evil-org-set-key-theme))))

(use-package base16-theme
  :ensure t
  :config
  (load-theme 'base16-eighties t))

(use-package which-key
  :ensure t
  :demand t
  :config
  (which-key-mode)
  :commands (which-key-show-top-level)
  :bind ("C-+" . which-key-show-top-level)
  :diminish which-key-mode)

(use-package projectile
  :ensure t
  :init
  (global-set-key [f8] 'neotree-toggle)
  :config
  (projectile-mode))

(use-package ivy
  :ensure t
  :diminish ivy-mode
  :config
  (ivy-mode 1)
  (bind-key "C-c C-r" 'ivy-resume))

(use-package ivy-bibtex
  :ensure t
  :defer t)

(use-package neotree
  :ensure t
  ;;:bind ("s-d" . neotree)
  :config
  (setq neo-dont-be-alone t
        neo-theme 'nerd)
  ;;(bind-keys :map neotree-mode-map
  ;;           ("u" . neotree-select-up-node)
  ;;           ;;("d" . *-neo-down-and-next)
  ;;           ("i" . neotree-enter)
  ;;	     ("K" . neotree-delete-node))
	     )

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

(require 'init-telephone-line)
(require 'init-languages)

(provide 'init-packages)