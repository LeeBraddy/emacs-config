;; color-theme-lee.el
;; The color theme that Lee uses for Emacs in a terminal.
;; Copyright (C) 2010 Lee Braddy <lee.braddy@gmail.com>
;;
(require 'color-theme)

(defun color-theme-lee ()
  "The color theme that Lee uses for Emacs in a terminal."
  (interactive)
  (color-theme-install
   '(color-theme-lee
     ((foreground-color . "gray86")
      (background-color . "gray15")
      (background-mode . dark))
     ;; Standard font lock faces
     (default ((t (nil))))
     (font-lock-builtin-face ((t (:foreground "chocolate"))))
     (font-lock-comment-delimiter-face ((t (:foreground "dim grey"))))
     (font-lock-comment-face ((t (:italic t :foreground "dim grey"))))
     (font-lock-constant-face ((t (:foreground "firebrick"))))
     (font-lock-doc-face ((t (:foreground "spring green"))))
     (font-lock-function-name-face ((t (:bold t :foreground "lime green"))))
     (font-lock-keyword-face ((t (:bold t :foreground "cornflower blue"))))
     (font-lock-negation-char-face ((t (:bold t :foreground "red"))))
     (font-lock-preprocessor-face ((t (:foreground "deep sky blue"))))
     (font-lock-regexp-grouping-backslash ((t (:foreground "firebrick"))))
     (font-lock-regexp-grouping-construct ((t (:foreground "firebrick"))))
     (font-lock-string-face ((t (:italic t :foreground "medium orchid"))))
     (font-lock-type-face ((t (:bold t :foreground "gold"))))
     (font-lock-variable-name-face ((t (:foreground "light sky blue"))))
     (font-lock-warning-face ((t (:bold t :italic t :foreground "red"))))

     ;; Search
     (isearch ((t (:foreground "dodger blue" :background "gray"))))
     (isearch-lazy-highlight-face 
      ((t (:foreground "dodger blue" :background "gray"))))

     ;; Emacs Interface
     (mode-line ((t (:foreground "gray15" :background "gray86"))))
     (minibuffer-prompt ((t (:foreground "green"))))
     (region ((t (:background "gray20"))))

     ;; Parenthesis matching
     (show-paren-match-face 
      ((t (:foreground "red" :background "white"))))
     (show-paren-mismatch-face 
      ((t (:foreground "black" :background "red"))))

     ;; Line highlighting
     (highlight ((t (:background "gray20"))))
     (highlight-current-line-face ((t (:background "gray20"))))

     ;; Calendar
     (holiday-face ((t (:foreground "dark orchid"))))

     ;; Info
     (info-xref ((t (:foreground "light slate blue"))))
     (info-xref-visited ((t (:foreground "dark orchid"))))

     ;; AUCTeX
     (font-latex-sectioning-5-face ((t (:foreground "cyan" :bold t))))
     (font-latex-bold-face ((t (:foreground "magenta" :bold t))))
     (font-latex-italic-face ((t (:foreground "cyan" :italic t))))
     (font-latex-math-face ((t (:foreground "green"))))
     (font-latex-string-face ((t (:foreground "gray"))))
     (font-latex-warning-face ((t (:foreground "red"))))
     (font-latex-slide-title-face ((t (:foreground "deep sky blue"))))
     )))
 
(provide 'color-theme-lee)
