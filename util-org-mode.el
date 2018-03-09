;; org-mode
(require 'org)

(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

(add-hook 'org-mode-hook 'turn-on-font-lock)
(add-hook 'org-mode-hook
          (lambda () (setq truncate-lines nil)))
(setq org-log-done t)

(setq org-base-dir (concat dropbox-base-dir "/Dropbox/Notes/org"))
(setq org-agenda-files (list (concat org-base-dir "/todo.org")))

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(setq org-tags-column -90)
