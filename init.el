;; Unicode
(set-language-environment "UTF-8")
;; Load the font-lock package.
(require 'font-lock)
;; Maximum colors
(setq font-lock-maximum-decoration t)
;; Turn on font-lock in all modes that support it
(global-font-lock-mode t)
;; Hide Toolbar for GUI.
;; Hide Menu and Toolbar for terminal.
(scroll-bar-mode -1)
(if window-system
    (tool-bar-mode -1)
  (progn
    (menu-bar-mode -1)
    (tool-bar-mode -1)))
;; Display the time on modeline.
(display-time)
;; Display the column number on modeline.
(column-number-mode t)
;; Library path.
(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/cc-mode")
(add-to-list 'load-path "~/.emacs.d/modes")
(add-to-list 'load-path "~/.emacs.d/modes/html5")
(add-to-list 'load-path "~/.emacs.d/color-theme")
(add-to-list 'load-path "~/.emacs.d/color-themes")
(add-to-list 'load-path "~/.emacs.d/modes/go")
;; Use go-mode
(require 'go-mode-load)
;; Color Theme
(if window-system
    (progn (require 'color-theme-lee)
           (color-theme-lee))
  (progn (require 'color-theme-lee-term)
         (color-theme-lee-term)))
;; Highlight the current line.
;;(require 'highlight-current-line)
;;(highlight-current-line-on t)
(global-hl-line-mode 1)
;; Load other init files.
(load "my-hooks")
(load "global-keys")
;; Local DTDs
;;(setq sgml-local-catalogs '("~/.emacs.d/dtds/catalog.soc"))
;; Disable the startup screen.
(setq inhibit-startup-message t)
;; End file with newline.
(setq require-final-newline t)
;; Do not add newlines when arrow key is pressed.
(setq next-line-add-newlines nil)
;;;; Use spaces instead of tabs.
(setq-default indent-tabs-mode nil)
;; Abbrev Stuff.
(setq-default abbrev-mode t)
(read-abbrev-file "~/.emacs.d/llb_abbrevs.el")
(read-abbrev-file "~/.emacs.d/abbrev_defs.el")
(setq abbrev-file-name "~/.emacs.d/abbrev_defs.el")
(setq save-abbrevs t)
;; See what the marked region is.
(setq transient-mark-mode t)
;;;; A c-mode formatting thing.
;;(setq c-auto-newline 1)
;;;; Default c style.
;;(setq c-default-style '((java-mode . "java")
;;			(awk-mode . "awk")
;;			(csharp-mode . "java")
;;			(other . "linux")))
;; Turn off backup files.
(setq make-backup-files nil)
;; Search highlighting
(setq search-highlight t)
;; Query replace highlighting
(setq query-replace-highlight t)
;; Make C-k kill whole line if at col 0.
(setq-default kill-whole-line t)
;; Show tabs as 8 cols.
(setq-default tab-width 8)
;; Highlight matching parentheses.
(require 'paren) (show-paren-mode t)
;; Hide show.
(load-library "hideshow")
;; Turn on completions.
(load-library "completion")
(initialize-completions)
;; C sharp autoload.
(autoload 'csharp-mode "csharp-mode" "Major mode for editing C# code." t)
(setq auto-mode-alist
      (append '(("\\.cs$" . csharp-mode)) auto-mode-alist))
;; Use new awk-mode.
(autoload 'awk-mode "cc-mode" nil t)
;; JavaScript autoload.
(autoload 'javascript-mode "javascript" "Major mode for editing JavaScript." t)
(setq auto-mode-alist
      (append '(("\\.js\\'" . javascript-mode)) auto-mode-alist))
;; HTML5 crosswired with nXML
(eval-after-load "rng-loc"
  '(add-to-list 'rng-schema-locating-files 
                "~/.emacs.d/modes/html5/schemas.xml"))
(require 'whattf-dt)
;;---FUNCTIONS
;;Convert DOS cr-lf to UNIX newline
(defun dos-unix () (interactive) (goto-char (point-min))
  (while (search-forward "\r" nil t) (replace-match "")))
;;Convert UNIX newline to DOS cr-lf
(defun unix-dos () (interactive) (goto-char (point-min))
  (while (search-forward "\n" nil t) (replace-match "\r\n")))
;;---END-FUNCTIONS


;; Emacs customize.
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(display-time-mode t)
 '(show-paren-mode t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(underline ((((supports :underline t)) nil))))
