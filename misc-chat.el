(require 'jabber)

(require 'password-cache)

(setq jabber-account-list
      '(("zellux@gmail.com" 
         (:network-server . "talk.google.com")
         (:connection-type . ssl))))

;; (setq jabber-auto-reconnect 't)
;; (setq password-cache-expiry 99999)
