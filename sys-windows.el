(global-font-lock-mode 1) 
;; (set-face-font 'default "Consolas-11")
(set-face-font 'default "Monaco-10")

;; Color settings
(setq load-path (cons "~/emacs/utils/color-themes" load-path))
(require 'color-theme)
(color-theme-initialize)
(color-theme-ld-dark)

;; Toggle off tool-bar
(tool-bar-mode 0)

;; Muse settings
(add-to-list 'load-path "~/emacs/utils/muse")
(setq my-muse-base-dir "d:/project/notes")
(load "muse-init.el")

