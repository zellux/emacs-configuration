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

;; Color theme
(setq load-path (cons "~/emacs/utils/color-themes" load-path))
(setq load-path (cons "~/emacs/packages/tomorrow-theme/GNU Emacs" load-path))
(setq load-path (cons "~/emacs/utils/themes/emacs-color-theme-solarized" load-path))
;; (require 'color-theme)
;; (load "color-theme-wyx.el")
;; (load "color-theme-tango.el")
;; (load-theme 'solarized-dark t)
;; (color-theme-wyx)
(require 'color-theme-solarized)
(color-theme-solarized-dark)

;; Column display ON
(column-number-mode t)

;; Load GUI settings 
(cond
 ((eq initial-window-system nil)
  (message "Console"))
 (t (load "gui-settings.el")))
