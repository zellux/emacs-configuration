(when (< emacs-major-version 24)
    (add-to-list 'load-path "~/emacs/utils/package-old"))
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

(setq package-list '(ecb shm bm yasnippet muse popup color-theme-solarized async auto-complete-clang go-mode projectile))
(when (>= emacs-major-version 24)
    (setq package-list '(ecb shm bm yasnippet muse helm popup color-theme-solarized async auto-complete-clang go-mode js3-mode jsx-mode)))

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

# Projectile
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
