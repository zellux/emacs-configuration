;; I'm used to marking regions by C-2
(global-set-key (kbd "C-2") 'set-mark-command)
(scroll-bar-mode -1)

;; Toggle off tool-bar
(tool-bar-mode 0)

;; Maximize windows
(defun toggle-fullscreen ()
  (interactive)
  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
                         '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
                         '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
  )
(add-hook 'window-setup-hook 'toggle-fullscreen t)

;; Speedbar hotkey
(global-set-key [(f8)] 'speedbar)
