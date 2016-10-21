;; Dired mode
(add-hook 'dired-load-hook
          (lambda ()
            (setq dired-font-lock-keywords
                  (append dired-font-lock-keywords
                          (list
                           (list dired-re-exe
                                 '(".+" (dired-move-to-filename) nil (0
																	  font-lock-type-face))))))))

;; (require 'git-emacs)

(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yaml$" . yaml-mode))

(require 'textile-mode)
(add-to-list 'auto-mode-alist '("\\.textile\\'" . textile-mode))

;; ibuffer for buffer management
(require 'ibuffer) 
(setq ibuffer-saved-filter-groups
	  (quote (("default"      
			   ("Org" ;; all org-related buffers
				(mode . org-mode))  
			   ("Mail"
				(or  ;; mail-related buffers
				 (mode . message-mode)
				 (mode . mail-mode)
				 ))
			   ("Files"
				(mode . dired-mode))
			   ("Danimos"
				(filename . "/home/wyx/danimos/"))
			   ("Nexus"
				(filename . "/home/wyx/nexus/"))
			   ("Notes"
				(filename . "/home/wyx/notes/"))
			   ("Programming" ;; prog stuff not already in MyProjectX
				(or
				 (mode . c-mode)
				 (mode . c++-mode)
				 (mode . perl-mode)
				 (mode . python-mode)
				 (mode . emacs-lisp-mode)
				 ;; etc
				 ))))))

(add-hook 'ibuffer-mode-hook
		  (lambda ()
			(ibuffer-switch-to-saved-filter-groups "default")))

(global-set-key (kbd "C-x C-b") 'ibuffer)

(setq ibuffer-show-empty-filter-groups nil)

;; ido-mode
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; Make buffer name unique
(require 'uniquify)
(setq
 uniquify-buffer-name-style 'post-forward
 uniquify-separator ":")

(require 'winner)
(setq winner-dont-bind-my-keys t) ;; default bindings conflict with org-mode

(global-set-key (kbd "C-c <left>") 'winner-undo)
(global-set-key (kbd "C-c <right>") 'winner-redo)
(winner-mode t) ;; turn on the global minor mode

(autoload 'markdown-mode "markdown-mode.el"
  "Major mode for editing Markdown files" t)
(setq auto-mode-alist
      (cons '("\\.markdown" . markdown-mode)
            (cons '("\\.md" . markdown-mode)
                  (cons '("\\.text" . markdown-mode) auto-mode-alist))))

(add-to-list 'load-path "~/emacs/utils/popup")

(require 'projectile)
(projectile-global-mode)

;; (add-to-list 'load-path "~/emacs/utils/async")
;; (add-to-list 'load-path "~/emacs/utils/helm")
;; (require 'helm-config)
;; (helm-mode 1)
