(require 'xcscope)
(require 'linum)
(require 'cc-mode)
(require 'mic-paren)
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

(paren-activate)

;; (show-paren-mode t)

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

;; (custom-set-variables
;;   ;; custom-set-variables was added by Custom.
;;   ;; If you edit it by hand, you could mess it up, so be careful.
;;   ;; Your init file should contain only one such instance.
;;   ;; If there is more than one, they won't work right.
;;  '(column-number-mode t)
;;  '(muse-html-charset-default "utf-8")
;;  '(muse-html-encoding-default (quote utf-8))
;;  '(muse-html-meta-content-encoding (quote utf-8))
;;  '(safe-local-variable-values (quote ((c-set-style . "BSD"))))
;;  '(weblogger-config-alist (quote (("default" ("user" . "zellux") ("server-url" . "http://techblog.zellux.czm.cn/xmlrpc.php") ("weblog" . "1"))))))

;; (load "muse-init.el")
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )


