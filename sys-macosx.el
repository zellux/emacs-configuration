(add-to-list 'load-path "/usr/local/share/emacs/site-lisp")
(setq dropbox-base-dir "~/Documents/Dropbox")

(message "Mac OS X detected.")

;; Hotfix for S-TAB remapping issue in Mac OS X, see
;; http://groups.google.com/group/gnu.emacs.help/browse_thread/thread/094d5a87076987ec?pli=1
;; for more information.
(define-key (keymap-parent local-function-key-map) [S-tab] nil) 

(setq ispell-program-name "/usr/local/bin/aspell")

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))
