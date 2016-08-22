(setenv "GOPATH" "/Users/zellux/code/golang")

(defun go-mode-custom ()
  (add-hook 'before-save-hook 'gofmt-before-save)
  (local-set-key (kbd "M-.") 'godef-jump)
  (setq
   gofmt-command "goimports"
   tab-width 2         ; display tabs as two-spaces
   indent-tabs-mode 1  ; use hard tabs to indent
   fill-column 100)    ; set a reasonable fill w
)

(add-hook 'go-mode-hook
      '(lambda ()
         (go-mode-custom)))

(let ((gopath (concat (getenv "GOPATH") "/src/golang.org/x/tools/cmd/oracle/oracle.el")))
  (if (file-exists-p gopath)
      (load-file gopath)))

(require 'go-eldoc)
(add-hook 'go-mode-hook 'go-eldoc-setup)

(require 'go-autocomplete)
(require 'auto-complete-config)
(define-key ac-mode-map (kbd "C-TAB") 'auto-complete)
