;; Common settings
(setq backup-directory-alist '(("" . "~/.emacs.d/.backups")))

;; Marking regions by C-2
(global-set-key (kbd "C-2") 'set-mark-command)

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
(load "my-org-mode.el")

;; Color theme
(setq load-path (cons "~/emacs/utils/color-themes" load-path))
(require 'color-theme)
(load "color-theme-tango.el")
(load "color-theme-wyx.el")
(color-theme-wyx)

;; Column display ON
(column-number-mode t)

;; Load GUI settings 
(cond
 ((eq initial-window-system nil)
  (message "Console"))
 (t (load "gui-settings.el")))

