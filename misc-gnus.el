;; gnus setup
(setq user-mail-address "zellux@gmail.com")
(setq user-full-name "Wang Yuanxuan")

;; nntp setup
(setq gnus-select-method '(nntp "news.cn99.com"))
(setq gnus-secondary-select-methods '((nnml "")))

(setq gnus-message-archive-group '((if (message-news-p) "nnml:sent.news" "nnml:sent.mail")))
(setq gnus-parameters '(("nnimap+imap.gmail.com.*" (gcc-self . t))))
