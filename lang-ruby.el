;; Inferior Ruby mode
(add-to-list 'load-path (expand-file-name "~/emacs/langmode/ruby/ruby"))
(autoload 'run-ruby "inf-ruby"
  "Run an inferior Ruby process")
(autoload 'inf-ruby-keys "inf-ruby"
  "Set local key defs for inf-ruby in ruby-mode")
(add-hook 'ruby-mode-hook
      '(lambda ()
         (inf-ruby-keys)
))


;; Emacs-rails
(add-to-list 'load-path (expand-file-name "~/emacs/langmode/ruby/emacs-rails"))
(require 'rails)
(setq rails-enable-ruby-electric nil)

;; RHTML-mode
(add-to-list 'load-path (expand-file-name "~/emacs/langmode/ruby/rhtml"))
(require 'rhtml-mode)