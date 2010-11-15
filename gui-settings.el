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

(set-default-font "Monaco-14")
(set-fontset-font (frame-parameter nil 'font)
          'han (font-spec :family "STHeiTi" :size 16))
(set-fontset-font (frame-parameter nil 'font)
          'symbol (font-spec :family "STHeiTi" :size 16))
(set-fontset-font (frame-parameter nil 'font)
          'cjk-misc (font-spec :family "STHeiTi" :size 16))
(set-fontset-font (frame-parameter nil 'font)
          'bopomofo (font-spec :family "STHeiTi" :size 16))
