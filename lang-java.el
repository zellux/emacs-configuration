(add-to-list 'load-path "~/emacs/langmode/java")
; load the smali/baksmali mode
(autoload 'smali-mode "smali-mode" "Major mode for editing and viewing smali issues" t)
(setq auto-mode-alist (cons '(".smali$" . smali-mode) auto-mode-alist))

(add-hook 'java-mode-hook (function cscope:hook))
