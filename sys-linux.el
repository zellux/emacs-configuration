(require 'xcscope)
(require 'linum)
(require 'cc-mode)
(require 'bm)

;; (require 'pysmell)
;; (require 'pymacs)
;; (pymacs-load "ropemacs" "rope-")

;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
(when
    (load
     (expand-file-name "~/emacs/elpa/package.el"))
  (package-initialize))

(global-set-key (kbd "<f6>") 'bm-toggle)
(global-set-key (kbd "<f5>") 'bm-next)
(global-set-key (kbd "<f7>") 'bm-show)


(load "my-python.el")

;; (load "my-picture.el")
(load "my-gnus.el")
(load "psvn.el")
(load "my-doxygen.el")
(load "my-org-mode.el")
;; (load "my-auctex.el")
;; (load "my-fp.el")
(load "my-utils.el")
(load "my-vcs.el")

(load "my-cc-mode.el")
(setq my-muse-base-dir "~/notes")
(load "muse-init.el")
(load "gui-font.el")
(load "gui-settings.el")

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
