(add-to-list 'load-path "~/emacs/langmode/go/go-mode" t)
(require 'go-mode-autoloads)

(defun go-mode-custom ()
  (set (make-local-variable 'tab-width) 2)
  (set (make-local-variable 'indent-tabs-mode) nil))


(add-hook 'go-mode-hook
      '(lambda ()
         (go-mode-custom)
))
