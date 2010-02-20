(setq load-path (cons "~/" load-path))
(setq load-path (cons "~/emacs" load-path))
(setq load-path (cons "~/emacs/utils" load-path))

;; Common settings

;; I'm used to marking regions by C-2
(global-set-key (kbd "C-2") 'set-mark-command)

(setq backup-directory-alist '(("" . "~/.emacs.d/.backups")))

;; Highlight FIXME, TODO and BUG
(font-lock-add-keywords nil
			'(("\\<\\(FIXME\\|TODO\\|BUG\\):" 1 font-lock-warning-face t)))

;; Select configuration depending on system, since I need few extension under Windows
(cond ((string-equal system-type "windows-nt")
       (load "sys-windows.el"))
      (t (load "sys-linux.el")))

;; Alternative for show-paren-mode
(require 'mic-paren)
(paren-activate)

;; TODO: Clean up this mess
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(org-agenda-files nil)
 '(quack-fontify-style (quote emacs))
 '(safe-local-variable-values (quote ((c-set-style . "BSD") (innamespace . 0) (access-label . /) (statement-case-intro . +) (statement-case-open . +) (case-label . +) (label . /) (statement-cont \, (when (fboundp (quote c-no-indent-after-java-annotations)) (quote c-no-indent-after-java-annotations)) \, (when (fboundp (quote c-lineup-assignments)) (quote c-lineup-assignments)) ++) (substatement-open . 0) (inline-open . 0) (block-open . 0) (topmost-intro . 0) (arglist-close . c-lineup-arglist) (comment-intro . 0) (inher-intro . ++) (member-init-intro . ++) (func-decl-cont . ++) (c-offsets-alist (arglist-intro google-c-lineup-expression-plus-4) (func-decl-cont . ++) (member-init-intro . ++) (inher-intro . ++) (comment-intro . 0) (arglist-close . c-lineup-arglist) (topmost-intro . 0) (block-open . 0) (inline-open . 0) (substatement-open . 0) (statement-cont \, (when (fboundp (quote c-no-indent-after-java-annotations)) (quote c-no-indent-after-java-annotations)) \, (when (fboundp (quote c-lineup-assignments)) (quote c-lineup-assignments)) ++) (label . /) (case-label . +) (statement-case-open . +) (statement-case-intro . +) (access-label . /) (innamespace . 0)) (c-cleanup-list brace-else-brace brace-elseif-brace brace-catch-brace empty-defun-braces defun-close-semi list-close-comma scope-operator) (c-indent-comments-syntactically-p) (c-hanging-semi&comma-criteria c-semi&comma-no-newlines-for-oneline-inliners c-semi&comma-inside-parenlist c-semi&comma-no-newlines-before-nonblanks) (c-hanging-colons-alist (case-label) (label after) (access-label after) (member-init-intro before) (inher-intro)) (c-hanging-braces-alist (defun-open after) (defun-close before after) (class-open after) (class-close before after) (namespace-open after) (inline-open after) (inline-close before after) (block-open after) (block-close . c-snug-do-while) (extern-lang-open after) (extern-lang-close after) (statement-case-open after) (substatement-open after)) (c-comment-only-line-offset . 0) (c-enable-xemacs-performance-kludge-p . t) (c-recognize-knr-p))))
 '(scheme-program-name "mit-scheme"))
