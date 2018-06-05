(scroll-bar-mode 0)
(tool-bar-mode 0)
(menu-bar-mode 0)

(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))

(package-initialize)

(add-to-list 'load-path (expand-file-name "user" user-emacs-directory))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;(set-face-attribute 'default nil
;                    :family "Source Code Pro"
;                    :height 110
;                    :weight 'normal
;                    :width 'normal)

(setq custom-safe-themes t)

(require 'init-packages)
(require 'init-misc-configs)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(package-selected-packages
   (quote
    (spacemacs-theme which-key use-package telephone-line slime projectile neotree julia-repl ivy-bibtex haskell-mode gnuplot-mode evil-org ess cider base16-theme auctex))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
