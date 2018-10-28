(setq dropbox-base-dir "~/Dropbox")

(setq package-list
      '(ecb
        shm
        bm
        yasnippet
        muse
        popup
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
        helm
        js3-mode
        jsx-mode
        exec-path-from-shell
        org
        org-plus-contrib
        rtags
        elpy
        ))

(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

(require 'xcscope)
(require 'linum)
(require 'cc-mode)
(require 'bm)

(cscope-setup)

(global-set-key (kbd "<f5>") 'bm-toggle)
(global-set-key (kbd "<f6>") 'bm-next)
(global-set-key (kbd "<f7>") 'bm-show)
(global-set-key (kbd "C-z") nil)

(setq popup-terminal-command '("gnome-terminal"))

(load "lang-python.el")

;; (load "misc-gnus.el")
(load "misc-doxygen.el")
(load "util-org-mode.el")
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
(setq projectile-enable-caching t)

(cond
  ((not (boundp 'initial-window-system))
   (message "Console"))
  (t (load "gui-settings.el")))
