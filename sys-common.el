;; Desktop save mode
(desktop-save-mode 1)

;; Common settings
(setq backup-directory-alist '(("" . "~/.emacs.d/.backups")))

;; Marking regions by C-2
(global-set-key (kbd "C-2") 'set-mark-command)

;; Use SPACE to indent instead of TAB, I hate TAB!
(setq-default indent-tabs-mode nil)

;; Highlight FIXME, TODO and BUG
(font-lock-add-keywords nil
			'(("\\<\\(FIXME\\|TODO\\|BUG\\):" 1 font-lock-warning-face t)))

;; Alternative for show-paren-mode
(require 'mic-paren)
(paren-activate)

;; Syntax highlight
(global-font-lock-mode t)

;; Bookmark
(setq 
 bookmark-default-file "~/.emacs.d/bookmarks" ;; keep my ~/ clean
 bookmark-save-flag 1)                        ;; autosave each change)

;; Getting rid of the 'yes or no' prompt and replace it with 'y or n'
(fset 'yes-or-no-p 'y-or-n-p)

;; org-mode
;; (load "my-org-mode.el")

;; Column display ON
(column-number-mode t)

;; Load GUI settings 
(cond
 ((eq initial-window-system nil)
  (message "Console"))
 (t (load "gui-settings.el")))

(semantic-stickyfunc-mode -1)

;; Ask before quitting
(defun ask-before-closing ()
  "Ask whether or not to close, and then close if y was pressed"
  (interactive)
  (if (y-or-n-p (format "Are you sure you want to exit Emacs? "))
      (if (< emacs-major-version 22)
          (save-buffers-kill-terminal)
        (save-buffers-kill-emacs))
    (message "Canceled exit")))

(global-set-key (kbd "C-x C-c") 'ask-before-closing)

(global-set-key (kbd "C-j") 'newline-and-indent)

(require 'yasnippet)
(yas-global-mode 1)


(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

(color-theme-solarized)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bm-face ((t (:background "color-236" :foreground "white"))))
 '(cscope-line-face ((t (:foreground "#5f8700"))))
 '(ecb-default-highlight-face ((t (:background "brightgreen"))))
 '(semantic-decoration-on-private-members-face ((((class color) (background dark)) (:background "#2e3330")))))
