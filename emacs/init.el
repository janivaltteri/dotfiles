(scroll-bar-mode 0)
(tool-bar-mode 0)
(menu-bar-mode 0)

(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

(package-initialize)

(setq use-package-always-ensure t)

(add-to-list 'load-path (expand-file-name "user" user-emacs-directory))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(set-face-attribute 'default nil
                    :family "Source Code Pro"
                    :height 130
                    :weight 'normal
                    :width 'normal)

(setq custom-safe-themes t)

(require 'init-packages)
(require 'init-misc-configs)

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
    (load custom-file))

(put 'downcase-region 'disabled nil)
