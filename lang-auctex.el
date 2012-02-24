;; AucTeX
(add-to-list 'load-path (expand-file-name "/Users/wyx/Downloads/auctex-11.86"))
(load "auctex.el" nil t t)
;; (load "preview-latex.el" nil t t)
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-Master nil)

(add-hook 'LaTeX-mode-hook
          (function (lambda ()
		      (flyspell-mode 1)
                      (paren-toggle-matching-quoted-paren 1)
                      (paren-toggle-matching-paired-delimiter 1))))


