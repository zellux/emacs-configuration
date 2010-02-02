(add-to-list 'load-path "~/emacs/utils/emacs-jabber")

(require 'jabber)

(setq jabber-account-list
      '(("zellux@gmail.com" 
         (:network-server . "talk.google.com")
         (:connection-type . ssl))))

