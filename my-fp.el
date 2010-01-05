;; Emacs Haskell-mode
(load "/usr/share/emacs/site-lisp/haskell-mode/haskell-site-file.el")
(autoload 'turn-on-haskell-doc-mode "haskell-doc" nil t)
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-ghci)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)

;; slime-mode
(setq inferior-lisp-program "/usr/bin/mit-scheme"
      slime-startup-animation t)
(add-to-list 'load-path "/usr/share/emacs/site-lisp/slime/")
(require 'slime)
(slime-setup)

(add-to-list 'load-path "~/emacs/tuareg/")
(load "tuareg.el")
