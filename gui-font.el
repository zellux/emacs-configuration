(set-default-font "Consolas-11")
(set-default-font "Monaco-12")

(set-frame-font "Monaco-12")
(set-fontset-font (frame-parameter nil 'font) nil
		  (font-spec :family "DFHeiW5-A" :size 16))
(set-fontset-font (frame-parameter nil 'font) 'han
		  (font-spec :family "DFHeiW5-A" :size 16))
(set-fontset-font (frame-parameter nil 'font) 'bopomofo
		  (font-spec :family "DFHeiW5-A" :size 16))
(set-fontset-font (frame-parameter nil 'font) 'symbol
		  (font-spec :family "DFHeiW5-A" :size 16))
(set-fontset-font (frame-parameter nil 'font) 'cjk-misc
		  (font-spec :family "DFHeiW5-A" :size 16))
