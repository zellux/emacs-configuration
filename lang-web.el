;; (setq load-path (cons "~/emacs/langmode/javascript/js2-mode" load-path))
;; (add-hook 'js-mode-hook 'js2-minor-mode)
;; (add-hook 'js2-mode-hook 'ac-js2-mode)
;; ;; (add-to-list 'auto-mode-alist '("\\.json$" . js-mode))
;; ;; (add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
;; (setq js2-highlight-level 3)
;; (setq-default js2-basic-offset 2)
;; (setq-default js2-bounce-indent-p t)

(setq load-path (cons "~/emacs/langmode/javascript/js3-mode" load-path))

(custom-set-variables
 '(js3-auto-indent-p t)         ; it's nice for commas to right themselves.
 '(js3-enter-indents-newline t) ; don't need to push tab before typing
 '(js3-indent-on-enter-key t)   ; fix indenting before moving on
 '(js-indent-level 2)
 '(jsx-indent-level 2)
)

(autoload 'js3-mode "js3-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js3-mode))

(setq load-path (cons "~/emacs/langmode/javascript/jsx-mode/src" load-path))
(add-to-list 'auto-mode-alist '("\\.js\\'" . jsx-mode))
(autoload 'jsx-mode "jsx-mode" "JSX mode" t)
