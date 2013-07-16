;; Compilation
(setq compilation-scroll-output t)

;; cedet
(semantic-mode 1)
(global-ede-mode t)

;; * This enables the database and idle reparse engines
;;(semantic-load-enable-minimum-features)

;; * This enables some tools useful for coding, such as summary mode
;;   imenu support, and the semantic navigator
;; (semantic-load-enable-code-helpers)

;; * This enables even more coding tools such as the nascent intellisense mode
;;   decoration mode, and stickyfunc mode (plus regular code helpers)
;; (semantic-load-enable-guady-code-helpers)

;; * This turns on which-func support (Plus all other code helpers)
;; (semantic-load-enable-excessive-code-helpers)
(setq semantic-load-turn-everything-on t)
;; (require 'semantic-load)


;; This turns on modes that aid in grammar writing and semantic tool
;; development.  It does not enable any other features such as code
;; helpers above.
;; (semantic-load-enable-semantic-debugging-helpers)

(c-set-offset 'inline-open 0)
(c-set-offset 'friend '-)
(c-set-offset 'substatement-open 0)
;; (add-hook 'c-mode-common-hook
;;           (function (lambda ()
;;                       (paren-toggle-open-paren-context 1))))

(setq c-basic-offset 4)

(defun my-c-mode-common-hook()
  (setq tab-width 4 indent-tabs-mode nil)

  (setq default-tab-width 4)
  (setq column-number-mode t)

  (setq c-macro-shrink-window-flag t)
  (setq c-macro-preprocessor "cpp")
  (setq c-macro-cppflags " ")
  (setq c-macro-prompt-flag t)
  (setq hs-minor-mode t)
  (setq abbrev-mode t)

  (local-set-key  (kbd "C-c o") 'ff-find-other-file)
)

(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)

;; Company-mode
(add-to-list 'load-path (expand-file-name "~/emacs/company"))
(load-file "~/emacs/company/company.el")

;; (require 'company-mode)
;; (require 'company-bundled-completions)

;; (company-install-bundled-completions-rules)
(add-hook 'c++-mode-hook 'company-mode)
(add-hook 'c-mode-hook 'company-mode)
(define-key company-mode-map "\M-n" 'company-cycle)
(define-key company-mode-map "\M-p" 'company-cycle-backwards)
;; ;; after these many seconds, completions will showe up automatically
(setq company-idle-delay nil)
;; only when these many chars have been typed, the completions will show up
;; and this take higher priority on company-idle-delay which means completions will
;; not show up if the chars are too few regardless how many seconds has passed
(setq company-complete-on-idle-min-chars 100)
;; after these many seconds, company tooltip window show up where you can use M-p
;; and M-n to navigate between all the completions
(setq company-tooltip-delay 1)
;; company-complet-on-edit 3, then completion will automatically show up IMMEDIATELY
;; after u wrote 3 characters without waiting for company-idle-delay seconds,
;; for example, there will be a standstill between '#in' and 'clude' since company need
;; to find completions.
;; That's exactly why i set it to nil to turn it off.
(setq company-complete-on-edit nil)

;; (autoload 'company-mode "company" nil t)

(autoload 'senator-try-expand-semantic "senator")
(setq semanticdb-default-save-directory "~/tmp")
(setq semantic-idle-scheduler-idle-time 432000)

(setq hippie-expand-try-functions-list
	    '(
		  senator-try-expand-semantic
		  try-expand-dabbrev
		  try-expand-dabbrev-visible
		  try-expand-dabbrev-all-buffers
		  try-expand-dabbrev-from-kill
		  try-expand-list
		  try-expand-list-all-buffers
		  try-expand-line
        try-expand-line-all-buffers
        try-complete-file-name-partially
        try-complete-file-name
        try-expand-whole-kill
        )
)

;; (global-set-key [(f11)] 'speedbar)
(global-set-key [(f11)] 'semantic-ia-show-summary)

(ede-enable-generic-projects)
(global-semantic-idle-summary-mode 1)

;; Danimos-specified configurations
(add-to-list 'semanticdb-project-roots "~/griffin/linux-2.6.22.19-vs2.2.0.7")

(setq semanticdb-project-roots 
      (list
       (expand-file-name "/")))

(setq griffin-base-dir "/home/wyx/griffin/linux-2.6.22.19-vs2.2.0.7")

(add-to-list 'auto-mode-alist (cons griffin-base-dir 'c++-mode))
(add-to-list 'auto-mode-alist (cons griffin-base-dir 'c-mode))

;; (setq semanticdb-project-roots 
;;       (list
;;        (expand-file-name "/")))
;; 
;; (setq danimos-base-dir "/home/wyx/danimos")
;; 
;; (add-to-list 'auto-mode-alist (cons danimos-base-dir 'c++-mode))
;; (add-to-list 'auto-mode-alist (cons danimos-base-dir 'c-mode))
;; 
;; (add-to-list 'semantic-lex-c-preprocessor-symbol-file
;; 			 (concat danimos-base-dir "/xen/include/config.h"))
;; (add-to-list 'semantic-lex-c-preprocessor-symbol-file
;; 			 (concat danimos-base-dir "/xen/include/asm-x86/config.h"))

;; (ede-cpp-root-project "Griffin"
;; 		      :name "Griffin"
;; 		      ;; Any file at root directory of the project
;; 		      :file "~/griffin/linux-2.6.22.19-vs2.2.0.7/Makefile"
;; 		      ;; Relative to the project's root directory
;; 		      :include-path '("/"
;; 				      "/include/asm-x86_64"
;; 				      "/include/linux"
;; 				      )
;; 		      )

;; (ede-cpp-root-project "Cerberus"
;; 		      :name "Cerberus"
;; 		      ;; Any file at root directory of the project
;; 		      :file "~/m2-shadow/linux-2.6.18/Makefile"
;; 		      ;; Relative to the project's root directory
;; 		      :include-path '("/"
;; 				      "/include/asm-x86_64"
;; 				      "/include/xen"
;; 				      "/include/linux"
;; 				      )
;; 		      ;; Pre-definds macro for preprocessing
;; 		      :spp-table '(("__XEN__" . "")
;; 				   ))

;; Configuration for project Nexus 
;; (ede-cpp-root-project "Nexus"
;; 					  :name "Nexus"
;; 					  ;; Any file at root directory of the project
;; 					  :file "~/nexus/GNUmakefile"
;; 					  ;; Relative to the project's root directory
;; 					  :include-path '("/"
;; 									  "/inc"
;; 									  )
;; 					  ;; Pre-definds macro for preprocessing
;; 					  ;; :spp-table '(("__XEN__" . "")
								   ;; )

;; ECB configurations
(add-to-list 'load-path "~/emacs/langmode/c/ecb-2.40")

(setq stack-trace-on-error t)
(require 'ecb)
;; 
(ecb-layout-define "my-cscope-layout" left nil
                   (ecb-set-methods-buffer)
                   (ecb-split-ver 0.3 t)
                   (other-window 1)
                   (ecb-split-ver 0.4 t)
                   (ecb-set-history-buffer)
                   (other-window 1)
                   (ecb-set-cscope-buffer))

(defecb-window-dedicator-to-ecb-buffer
    ecb-set-cscope-buffer
    " *ECB cscope-buf*"
    t
  "Display cscope buffer"
    (switch-to-buffer "*cscope*"))

(setq ecb-layout-name "my-cscope-layout")

;; ;; Disable buckets so that history buffer can display more entries
;; (setq ecb-history-make-buckets 'never)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-default-highlight-face ((t (:background "brightgreen"))))
 '(semantic-decoration-on-private-members-face ((((class color) (background dark)) (:background "#2e3330")))))

;; auto-complete
(add-to-list 'load-path "~/emacs/utils/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/emacs/utils/auto-complete/ac-dict")
(ac-config-default)

(add-to-list 'load-path "~/emacs/langmode/c/auto-complete-clang")
(require 'auto-complete-clang)
(setq clang-completion-suppress-error 't)
;; (setq ac-clang-flags
;;       (mapcar (lambda (item)(concat "-I" item))
;;               (append
;;                mycustom-system-include-paths
;;                )
;;               )
;;       )
 
(defun my-ac-clang-mode-common-hook()
  (define-key c-mode-base-map [backtab] 'ac-complete-clang)
)
 
(add-hook 'c-mode-common-hook 'my-ac-clang-mode-common-hook)
