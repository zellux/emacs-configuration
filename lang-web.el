(custom-set-variables
 '(js3-auto-indent-p t)         ; it's nice for commas to right themselves.
 '(js3-enter-indents-newline t) ; don't need to push tab before typing
 '(js3-indent-on-enter-key t)   ; fix indenting before moving on
)

(autoload 'js3-mode "js3-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js3-mode))

(add-to-list 'auto-mode-alist '("\\.js\\'" . jsx-mode))
(autoload 'jsx-mode "jsx-mode" "JSX mode" t)

