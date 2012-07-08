;; color-theme-lee-term.el
;; The color theme that Lee uses for Emacs in a terminal.
;; Copyright (C) 2010 Lee Braddy <lee.braddy@gmail.com>
;;
(require 'color-theme)

(defun color-theme-lee-term ()
  "The color theme that Lee uses for Emacs in a terminal."
  (interactive)
  (color-theme-install
   '(color-theme-lee-term
     ((foreground-color . nil)
      (background-color . nil)
      (background-mode . nil))
     ;; Term colors: black, red, green, yellow, blue, magenta, cyan, white
     ;; Standard font lock faces
     (default ((t (nil))))
     (font-lock-builtin-face ((t (:foreground "yellow"))))
     (font-lock-comment-delimiter-face ((t (:bold t :foreground "black"))))
     (font-lock-comment-face ((t (:bold t :foreground "black"))))
     (font-lock-constant-face ((t (:foreground "blue"))))
     (font-lock-doc-face ((t (:foreground "green"))))
     (font-lock-function-name-face ((t (:bold t :foreground "green"))))
     (font-lock-keyword-face ((t (:bold t :foreground "blue"))))
     (font-lock-negation-char-face ((t (:bold t :foreground "red"))))
     (font-lock-preprocessor-face ((t (:foreground "cyan"))))
     (font-lock-regexp-grouping-backslash ((t (:bold t :foreground "cyan"))))
     (font-lock-regexp-grouping-construct ((t (:bold t :foreground "cyan"))))
     (font-lock-string-face ((t (:foreground "magenta"))))
     (font-lock-type-face ((t (:bold t :foreground "yellow"))))
     (font-lock-variable-name-face ((t (:foreground "blue"))))
     (font-lock-warning-face ((t (:bold t :foreground "red"))))

     ;; Search
     (isearch ((t (:foreground "blue" :background "white"))))
     (isearch-lazy-highlight-face 
      ((t (:foreground "blue" :background "white"))))

     ;; Emacs Interface
     (minibuffer-prompt ((t (:bold t :foreground "green"))))
     (region ((t (:bold t :background "black"))))

     ;; Parenthesis matching
     (show-paren-match-face 
      ((t (:foreground "red" :background "white"))))
     (show-paren-mismatch-face 
      ((t (:foreground "black" :background "red"))))

     ;; Line highlighting
     (highlight ((t (:background "black"))))
     (highlight-current-line-face ((t (:background "black"))))

     ;; Calendar
     (holiday-face ((t (:foreground "magenta"))))

     ;; Info
     (info-xref ((t (:foreground "blue"))))
     (info-xref-visited ((t (:foreground "magenta"))))

     ;; AUCTeX
     (font-latex-sectioning-5-face ((t (:foreground "cyan" :bold t))))
     (font-latex-bold-face ((t (:foreground "magenta" :bold t))))
     (font-latex-italic-face ((t (:foreground "cyan" :italic t))))
     (font-latex-math-face ((t (:foreground "green"))))
     (font-latex-string-face ((t (:foreground "white"))))
     (font-latex-warning-face ((t (:foreground "red"))))
     (font-latex-slide-title-face ((t (:foreground "blue"))))
     )))
 
(provide 'color-theme-lee-term)
