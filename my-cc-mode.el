;; cedet
(load-file "~/emacs/cedet-1.0pre6/common/cedet.el")
(require 'semantic-ia)
(require 'semantic-gcc)

;; * This enables the database and idle reparse engines
;;(semantic-load-enable-minimum-features)

;; * This enables some tools useful for coding, such as summary mode
;;   imenu support, and the semantic navigator
;; (semantic-load-enable-code-helpers)

;; * This enables even more coding tools such as the nascent intellisense mode
;;   decoration mode, and stickyfunc mode (plus regular code helpers)
;; (semantic-load-enable-guady-code-helpers)

;; * This turns on which-func support (Plus all other code helpers)
(semantic-load-enable-excessive-code-helpers)
(setq semantic-load-turn-everything-on t)
(require 'semantic-load)


;; This turns on modes that aid in grammar writing and semantic tool
;; development.  It does not enable any other features such as code
;; helpers above.
;; (semantic-load-enable-semantic-debugging-helpers)


(c-set-offset 'inline-open 0)
(c-set-offset 'friend '-)
(c-set-offset 'substatement-open 0)
(add-hook 'c-mode-common-hook
          (function (lambda ()
                      (paren-toggle-open-paren-context 1))))

(setq c-basic-offset 4)

(defun my-c-mode-common-hook()
  (setq tab-width 4 indent-tabs-mode nil)
  ;; hungry-delete and auto-newline
  ;; (c-toggle-auto-hungry-state 1)

  (setq default-tab-width 4)
  (setq column-number-mode t)

;;  (define-key c-mode-base-map [(control \`)] 'hs-toggle-hiding)
;;  (define-key c-mode-base-map [(return)] 'newline-and-indent)
;;  (define-key c-mode-base-map [(f7)] 'compile)
;;  (define-key c-mode-base-map [(meta \`)] 'c-indent-command)
;;  (define-key c-mode-base-map [(tab)] 'hippie-expand)
;;  (define-key c-mode-base-map [(tab)] 'my-indent-or-complete)
;;  (define-key c-mode-base-map [(meta ?/)] 'semantic-ia-complete-symbol-menu)
  
  (local-set-key [(control return)] 'semantic-ia-complete-symbol)
  (local-set-key "\C-c?" 'semantic-ia-complete-symbol-menu)
  (local-set-key "\C-c>" 'semantic-complete-analyze-inline)
  (local-set-key "\C-cp" 'semantic-analyze-proto-impl-toggle)
  (define-key company-mode-map "\t" nil)
  (define-key company-mode-map [(backtab)] 'company-complete-common)
  ;; (local-set-key "." 'semantic-complete-self-insert)
  ;; (local-set-key ">" 'semantic-complete-self-insert)

  (setq c-macro-shrink-window-flag t)
  (setq c-macro-preprocessor "cpp")
  (setq c-macro-cppflags " ")
  (setq c-macro-prompt-flag t)
  (setq hs-minor-mode t)
  (setq abbrev-mode t)
)

(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)

;; Company-mode
(add-to-list 'load-path (expand-file-name "~/emacs/elpa/company-0.4.3"))
(load-file "~/emacs/elpa/company-0.4.3/company.el")

;; (require 'company-mode)
;; (require 'company-bundled-completions)

;; (company-install-bundled-completions-rules)
(add-hook 'c++-mode-hook 'company-mode)
(add-hook 'c-mode-hook 'company-mode)
;; Emacs的Bug导致在增量显示自动完成列表的时候，M-n和M-p不起作用了, 因此需要重新定义一下
(define-key company-mode-map "\M-n" 'company-cycle)
(define-key company-mode-map "\M-p" 'company-cycle-backwards)
;; 补全菜单自动出现的延时，我嫌自动出现太烦了，所以禁掉了
;; ;; 用到的时候就用命令来触发
;; ;; after these many seconds, completions will showe up automatically
(setq company-idle-delay nil)
;; only when these many chars have been typed, the completions will show up
;; and this take higher priority on company-idle-delay which means completions will
;; not show up if the chars are too few regardless how many seconds has passed
(setq company-complete-on-idle-min-chars 100)
;; 补全菜单出现的延时
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

;; Xrefactory
(setq load-path (cons "~/emacs/xref/emacs" load-path))
(setq exec-path (cons "~/emacs/xref" exec-path))
;; (load "xrefactory")

(add-to-list 'semanticdb-project-roots "~/oslab")

(setq semanticdb-project-roots 
      (list
        (expand-file-name "/")))

(defun my-indent-or-complete ()
   (interactive)
   (if (looking-at "\\>")
	     (hippie-expand nil)
	   (indent-for-tab-command))
 )

(global-set-key [(control tab)] 'my-indent-or-complete)


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

;; highlight FIXME, TODO and BUG
(add-hook 'c-mode-common-hook
               (lambda ()
                (font-lock-add-keywords nil
                 '(("\\<\\(FIXME\\|TODO\\|BUG\\):" 1 font-lock-warning-face t)))))

(global-ede-mode t)

(ede-cpp-root-project "Danimoth"
                :name "Danimoth"
                                ;; Any file at root directory of the project
                :file "~/danimoth/xen/Makefile"
                                ;; Relative to the project's root directory
                :include-path '("/include/asm-x86"
                                "/include/xen"
                                "/include/public"
                                "/include/acpi"
                                "/arch/x86/cpu/"
                               )
                                ;; Pre-definds macro for preprocessing
                :spp-table '(("isUnix" . "")
                             ("BOOST_TEST_DYN_LINK" . "")))

;; Copied from http://scottmcpeak.com/elisp/scott.emacs.el
; ---------------- matching word pairs ------------------
; The idea here is that while emacs has built-in support for matching
; things like parentheses, I work with a variety of syntaxes that use
; balanced keyword pairs, such as "begin" and "end", or "#if" and
; "#endif".  So this mechanism searches for the balanced element
; of such ad-hoc constructions.
;
; TODO: Currently, there is no support for skipping things that are
; in string literals, comments, etc.  I think that would be possible
; just by having appropriate regexs for them and skipping them when
; they occur, but I haven't tried yet.
(defun find-matching-element (search-func offset open-regex close-regex)
  "Search forwards or backwards (depending on `search-func') to find
   the matching pair identified by `open-regex' and `close-regex'."
  (let ((nesting 1)                ; number of pairs we are inside
        (orig-point (point))       ; original cursor loc
        (orig-case-fold-search case-fold-search))
    (setq case-fold-search nil)        ; case-sensitive search
    (goto-char (+ (point) offset))     ; skip the `open-regex' at cursor
    (while (and (> nesting 0)
                (funcall search-func
                  (concat "\\(" open-regex "\\)\\|\\(" close-regex "\\)") nil t))
      (if (string-match open-regex (match-string 0))
        (setq nesting (+ nesting 1))
        (setq nesting (- nesting 1))
      ))
    (setq case-fold-search orig-case-fold-search)
    (if (eq nesting 0)
      ; found the matching word, move cursor to the beginning of the match
      (goto-char (match-beginning 0))
      ; did not find the matching word, report the nesting depth at EOF
      (progn
        (goto-char orig-point)
        (error (format "Did not find match; nesting at file end is %d" nesting))
      )
    )))

; This is what I bind to Alt-[ and Alt-].
(defun find-matching-keyword ()
  "Find the matching keyword of a balanced pair."
  (interactive)
  (cond
    ; these first two come from lisp/emulation/vi.el
    ((looking-at "[[({]") (forward-sexp 1) (backward-char 1))
    ((looking-at "[])}]") (forward-char 1) (backward-sexp 1))

    ; TODO: Should the set of pairs be sensitive to the mode of
    ; the current file?

    ; Kettle CVC
    ((looking-at "ASSERT")
     (find-matching-element 're-search-forward 6 "ASSERT" "RETRACT"))
    ((looking-at "RETRACT")
     (find-matching-element 're-search-backward 0 "RETRACT" "ASSERT"))
                
    ; Kettle CVC
    ;
    ; "\\b": word boundary assertion, needed because one delimiter is
    ; a substring of the other
    ((looking-at "BLOCK")
     (find-matching-element 're-search-forward 5 "\\bBLOCK\\b" "ENDBLOCK"))
    ((looking-at "ENDBLOCK")
     (find-matching-element 're-search-backward 0 "ENDBLOCK" "\\bBLOCK\\b"))

    ; Simplify
    ((looking-at "BG_PUSH")
     (find-matching-element 're-search-forward 7 "BG_PUSH" "BG_POP"))
    ((looking-at "BG_POP")
     (find-matching-element 're-search-backward 0 "BG_POP" "BG_PUSH"))

    ; C/C++
    ((looking-at "#if")
     (find-matching-element 're-search-forward 3 "#if" "#endif"))
    ((looking-at "#endif")
     (find-matching-element 're-search-backward 0 "#endif" "#if"))

    ; ML
    ;
    ; this does not quite work because e.g. "struct" is also terminated
    ; with "end" ..
    ((looking-at "begin")
     (find-matching-element 're-search-forward 5 "\\bbegin\\b" "\\bend\\b"))
    ((looking-at "end")
     (find-matching-element 're-search-backward 0 "\\bend\\b" "\\bbegin\\b"))

    ;(t (error "Cursor is not on ASSERT nor RETRACT"))
    (t t)
  ))

;; ECB configurations
(add-to-list 'load-path "~/emacs/ecb-2.40")
(add-to-list 'load-path "~/emacs/cedet-1.0pre6/speedbar")
(add-to-list 'load-path "~/emacs/cedet-1.0pre6/eieio")

(require 'ecb-autoloads)

