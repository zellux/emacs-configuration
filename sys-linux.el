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

(global-set-key (kbd "<f5>") 'bm-toggle)
(global-set-key (kbd "<f6>") 'bm-next)
(global-set-key (kbd "<f7>") 'bm-show)
(global-set-key (kbd "C-z") nil)

(setq popup-terminal-command '("gnome-terminal"))

;; (load "lang-python.el")

;; (load "misc-gnus.el")
(load "misc-doxygen.el")
;; (load "misc-org-mode.el")
;; (load "lang-auctex.el")
(load "lang-fp.el")
(load "shared-tools.el")
;; (load "misc-vcs.el")

(load "lang-cc.el")
(load "lang-ruby.el")
(load "lang-go.el")
(load "lang-scala.el")
(load "lang-java.el")
(load "lang-web.el")
(load "lang-ml.el")
;; (setq my-muse-base-dir "~/notes")
;; (load "misc-muse.el")
;; (load "misc-emms.el")
;; (load "misc-chat.el")

(cond
 ((not (boundp 'initial-window-system))
  (message "Console"))
 (t (load "gui-settings.el")))

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(semantic-decoration-on-private-members-face ((((class color) (background dark)) (:background "#2e3330")))))
