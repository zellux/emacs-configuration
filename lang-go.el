(defun go-mode-custom ()
  (set (make-local-variable 'tab-width) 2)
  (set (make-local-variable 'indent-tabs-mode) nil)
  (add-hook 'before-save-hook 'gofmt-before-save))


(add-hook 'go-mode-hook
      '(lambda ()
         (go-mode-custom)))

(let ((gopath (concat (getenv "GOPATH") "/src/golang.org/x/tools/cmd/oracle/oracle.el")))
  (if (file-exists-p gopath)
      (load-file gopath)))
