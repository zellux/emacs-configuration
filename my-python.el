;;pysmell
;; (add-hook 'python-mode-hook (lambda () (pysmell-mode 1)))

;; Python mode
;; (require 'ido)
;; (ido-mode t)
(setq load-path (cons "~/emacs/langmode/python" load-path))
(load "django-html-mode.el")
(load "/usr/share/emacs/site-lisp/python-mode/python-mode.el")

(autoload 'python-mode "python-mode.el" "Python mode." t)
(setq auto-mode-alist (append '(("/*.\.py$" . python-mode)) auto-mode-alist))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))

(defun load-ropemacs ()
  "Load pymacs and ropemacs"
  (interactive)
  (setenv "PYMACS_PYTHON" "python")
  (require 'pymacs)
  (autoload 'pymacs-load "pymacs" nil t)
  (autoload 'pymacs-eval "pymacs" nil t)
  (autoload 'pymacs-apply "pymacs")
  (autoload 'pymacs-call "pymacs")
  (autoload 'pymacs-exec "pymacs" nil t)
  (pymacs-load "ropemacs" "rope-")
  (global-set-key [(meta ?/)] 'rope-code-assist)
  (setq rope-confirm-saving 'nil)
  )

(add-hook 'python-mode-hook 'load-ropemacs)

(add-hook 'python-mode-hook
           (lambda ()
             (set-variable 'py-indent-offset 4)
             (set-variable 'indent-tabs-mode nil)
             ;; (smart-operator-mode-on)
))


;; (eval-after-load "pymacs"
;; '(add-to-list 'pymacs-load-path YOUR-PYMACS-DIRECTORY"))
