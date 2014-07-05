;; structured-haskell-mode
;; https://github.com/chrisdone/structured-haskell-mode
(add-to-list 'load-path "~/emacs/langmode/haskell/structured-haskell-mode/elisp")
(require 'shm)
(add-hook 'haskell-mode-hook 'structured-haskell-mode)

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
