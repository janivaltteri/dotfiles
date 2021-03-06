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
  ;;(setq org-babel-clojure-backend 'cider)
  (setq org-babel-python-command "python3")
  ;;(setq indent-tabs-mode nil)
  ;;(setq org-src-preserve-indentation nil)
  (add-hook 'python-mode-hook
    (lambda ()
      (setq indent-tabs-mode nil)
      (setq python-indent 4)
      (setq tab-width 4))
    (untabify (point-min) (point-max)))
  (setq org-export-latex-listings 'listings)
  (setq org-latex-listings t)
  (add-to-list 'org-latex-packages-alist '("" "listings"))
  (add-to-list 'org-latex-classes
	       '("jva-beamer"
		 "\\documentclass\[presentation\]\{beamer\}"
		 ("\\section\{%s\}" . "\\section*\{%s\}")
		 ("\\subsection\{%s\}" . "\\subsection*\{%s\}")
		 ("\\subsubsection\{%s\}" . "\\subsubsection*\{%s\}")))
  (add-to-list 'org-latex-classes
               '("jva-article"
                 "\\documentclass[a4paper,11pt]{article}"
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

;;(use-package ox-pandoc)

;;(use-package ox-reveal
;;  :config
;;  (setq Org-Reveal-root "file:///home/jva/gate/softa/reveal.js")
;;  (setq Org-Reveal-title-slide nil))

(use-package org-re-reveal
  :config
  (setq org-re-reveal-klipse-languages '(javascript)))

(use-package ox-impress-js)

(use-package ob-hy)

(use-package ob-ipython
  :ensure t
  :defer t
  :config
  (add-hook 'org-babel-after-execute-hook 'org-display-inline-images 'append))

(provide 'init-org)
