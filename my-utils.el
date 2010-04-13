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

(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(require 'textile-mode)
(add-to-list 'auto-mode-alist '("\\.textile\\'" . textile-mode))

(require 'erc) 

(add-to-list 'load-path (expand-file-name "~/emacs/langmode/ocaml"))
(load "ocaml.emacs")

;; (load "quack")

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
				 (mode . perl-mode)
				 (mode . python-mode)
				 (mode . emacs-lisp-mode)
				 ;; etc
				 ))
			   ("ERC"   (mode . erc-mode))))))

(add-hook 'ibuffer-mode-hook
  (lambda ()
    (ibuffer-switch-to-saved-filter-groups "default")))

(global-set-key (kbd "C-x C-b") 'ibuffer)

(setq ibuffer-show-empty-filter-groups nil)


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
