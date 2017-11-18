;;; -*- lexical-binding: t -*-

(defcustom python-shell-interpreter "python3"
  "Default python interpreter for shell"
  :type 'string
  :group 'python)

(global-set-key (kbd "C-ä") 'next-buffer)
(global-set-key (kbd "C-ö") 'previous-buffer)
(global-set-key (kbd "C-'") 'other-window)

(define-key evil-insert-state-map "\C-w" 'evil-delete)
(define-key evil-insert-state-map "\C-y" 'yank)

(defun duplicate-line ()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (open-line 1)
  (next-line 1)
  (yank))

(global-set-key (kbd "C-c C-d") 'duplicate-line)

;; Padding for linum
(defun linum-format-func (line)
  (let ((w (length (number-to-string (count-lines (point-min) (point-max))))))
    (propertize (format (format "%%%dd " w) line) 'face 'linum)))
(setq linum-format 'linum-format-func)

(set-face-background 'vertical-border "#484848")
(set-face-foreground 'vertical-border (face-background 'vertical-border))

(provide 'init-misc-configs)

