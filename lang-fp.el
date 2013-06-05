;; Emacs Haskell-mode
;; (load "/usr/share/emacs/site-lisp/haskell-mode/haskell-site-file.el")
;; (autoload 'turn-on-haskell-doc-mode "haskell-doc" nil t)
;; (add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
;; (add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
;; (add-hook 'haskell-mode-hook 'turn-on-haskell-ghci)
;; (add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)

;; slime-mode
;; (setq inferior-lisp-program "/usr/bin/mit-scheme"
;;       slime-startup-animation t)
;; (add-to-list 'load-path "/usr/share/emacs/site-lisp/slime/")
;; (require 'slime)
;; (slime-setup)

(add-to-list 'load-path "~/emacs/langmode/lisp")
(require 'quack)

;; (setq inferior-lisp-program "/opt/local/bin/mit-scheme") ; your Lisp system
;; (add-to-list 'load-path "~/emacs/langmode/lisp/slime/")  ; your SLIME directory
;; (require 'slime)
;; (set-language-environment "UTF-8")
;; (setq slime-net-coding-system 'utf-8-unix)
;; (slime-setup)
;; 

(add-to-list 'load-path (expand-file-name "~/emacs/langmode/ocaml"))
(load "ocaml.emacs")
