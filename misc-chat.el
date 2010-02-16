(add-to-list 'load-path "~/emacs/utils/emacs-jabber")
(add-to-list 'load-path "~/emacs/utils/twitter")

(require 'jabber)

(setq jabber-account-list
      '(("zellux@gmail.com" 
         (:network-server . "talk.google.com")
         (:connection-type . ssl))))

(autoload 'twitter-get-friends-timeline "twitter" nil t)
(autoload 'twitter-status-edit "twitter" nil t)
(global-set-key "\C-xt" 'twitter-get-friends-timeline)
(add-hook 'twitter-status-edit-mode-hook 'longlines-mode)

