;; I'm used to marking regions by C-2
(global-set-key (kbd "C-2") 'set-mark-command)
(scroll-bar-mode -1)

;; Toggle off tool-bar
(tool-bar-mode 0)

;; Maximize windows
(require 'maxframe)
(add-hook 'window-setup-hook 'maximize-frame t)

;; Speedbar hotkey
(global-set-key [(f8)] 'speedbar)
