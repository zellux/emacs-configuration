(setq package-list
      '(ecb
        shm
        bm
        yasnippet
        muse
        popup
        color-theme-solarized
        async auto-complete-clang
        projectile
        xcscope
        go-mode
        go-eldoc
        go-autocomplete
        go-rename
        go-dlv
        thrift
        yasnippet
        git
        ))

(setq extra-packages-for-24
      '(helm
        js3-mode
        jsx-mode
        exec-path-from-shell
        org
        ))

(when (>= emacs-major-version 24)
  (setq package-list (append package-list extra-packages-for-24)))

(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

(require 'xcscope)
(require 'linum)
(require 'cc-mode)
(require 'bm)

;; (require 'pysmell)
;; (require 'pymacs)
;; (pymacs-load "ropemacs" "rope-")

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

;; Projectile
(define-key projectile-mode-map [?\s-d] 'projectile-find-dir)
(define-key projectile-mode-map [?\s-p] 'projectile-switch-project)
(define-key projectile-mode-map [?\s-f] 'projectile-find-file)
(define-key projectile-mode-map [?\s-g] 'projectile-grep)

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
