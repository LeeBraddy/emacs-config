;; Hide the menu-bar
(menu-bar-mode -1)
;; Hide the tool-bar
(tool-bar-mode -1)
;; Hide the scroll-bar
(scroll-bar-mode -1)
;; deftheme custom themes directory
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
;; deftheme Color Theme
(load-theme 'zenburn t)
;; Highlight current line
(global-hl-line-mode 1)
;; Underline current line
;;(set-face-attribute hl-line-face nil :underline t)
;; Show line numbers
(line-number-mode 1)
(global-linum-mode 1)
;; Show current column number
(column-number-mode 1)
;; Show time and load average in mode line
(display-time)
;; Flat look for the mode line
(set-face-attribute 'mode-line nil :box nil)
;; Set default font
;;(set-default-font "Anonymous Pro-9")
(set-default-font "Envy Code R-9")
;; Load paths
(add-to-list 'load-path "~/.emacs.d/modes/go")
;; Load Go Lang support
(require 'go-mode-load)
;; Do not show startup screen
(setq inhibit-startup-message t)
;; End files with newline
(setq require-final-newline t)
;; No backup files
(setq make-backup-files nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(safe-local-variable-values (quote ((eval when (require (quote rainbow-mode) nil t) (rainbow-mode 1)))))
 '(tool-bar-mode nil))
