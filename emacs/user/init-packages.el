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

(use-package magit
  :ensure t
  :defer t)

(use-package spacemacs-theme
  :ensure t
  :no-require t
  :config
  (load-theme 'spacemacs-dark))

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
  :defer t
  :config
  (setq bibtex-completion-bibliography '("/home/jva/bib/references.bib")))

;;  :config
;;  (setq ivy-re-builders-alist
;;      '((ivy-bibtex . ivy--regex-ignore-order)
;;        (t . ivy--regex-plus)))
;;  (setq bibtex-completion-bibliography
;;      '("/home/jva/key/latexia/kirjasto/references.bib")))

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

(require 'init-org)
(require 'init-telephone-line)
(require 'init-languages)
(require 'init-web)

(provide 'init-packages)
