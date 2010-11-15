(global-font-lock-mode 1) 
;; (set-face-font 'default "Consolas-11")
(set-face-font 'default "Monaco-10")

;; Toggle off tool-bar
(tool-bar-mode 0)

;; Muse settings
;; (add-to-list 'load-path "~/emacs/utils/muse")
;; (setq my-muse-base-dir "d:/project/notes")
;; (load "my-muse.el")

;; Maximize windows
(defun w32-maximize-frame ()
    "Maximize the current frame"
      (interactive)
        (w32-send-sys-command 61488))
 
(add-hook 'window-setup-hook 'w32-maximize-frame t)

(setq make-backup-files nil)

(setq dropbox-base-dir "d:/My Documents/My Dropbox")
