;; Hide the menu-bar
(menu-bar-mode -1)
;; Hide the tool-bar
(tool-bar-mode -1)
;; Hide the scroll-bar
(scroll-bar-mode -1)
;; Turn off the beeping
;;(setq ring-bell-function 'ignore)
;; Flash instead of beep
(setq visible-bell 1)
;; deftheme custom themes directory
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
;; deftheme Color Theme
;;(load-theme 'zenburn t)
;;(load-theme 'leuven t)
;;(load-theme 'misterioso t)
;;(load-theme 'birds-of-paradise-plus t)
;;(load-theme 'darcula t)
(load-theme 'Deviant t)
;;(load-theme 'whiteboard t)
;; Highlight current line
(global-hl-line-mode 1)
;; Underline current line
;;(set-face-attribute hl-line-face nil :underline t)
;; Show line numbers
(global-linum-mode 1)
;; Show current column number
(column-number-mode 1)
;; Show time and load average in mode line
(display-time)
;; Flat look for the mode line
(set-face-attribute 'mode-line nil :box nil)
;; Use spaces for indent
(setq-default indent-tabs-mode nil)
;; Show useless trailing whitespace
(setq-default show-trailing-whitespace t)
;; Set coding system to UTF and use UNIX LF
(prefer-coding-system 'utf-8-unix)
(setq default-buffer-file-coding-system 'utf-8-unix)
;; Set default font
;;(set-default-font "Anonymous Pro-9")
(set-default-font "Envy Code R-10")
;; Load paths
(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'load-path "~/.emacs.d/modes/go")
(add-to-list 'load-path "~/.emacs.d/modes")
;; Javascript.
;;(add-hook 'js-mode-hook 'js2-minor-mode)
;;(add-hook 'js2-mode-hook 'ac-js2-mode)
;; Load Go Lang support
(require 'go-mode-load)
;; Load Rainbow color code highlighting
(require 'rainbow-mode)
;; Do not show startup screen
(setq inhibit-startup-message t)
;; End files with newline
(setq require-final-newline t)
;; No backup files
(setq make-backup-files nil)
;; Spell check stuff
;; You need to install Aspell and an Aspell dictionary
(add-to-list 'exec-path "C:/Program Files (x86)/Aspell/bin/")
(setq ispell-program-name "aspell")
(setq ispell-personal-dictionary "lee.dict")
(require 'ispell)
;; Show matching parens, braces, and brackets
(show-paren-mode 1)
(setq show-paren-delay 0)
;; MELPA Emacs packages
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(safe-local-variable-values (quote ((eval when (require (quote rainbow-mode) nil t) (rainbow-mode 1)))))
 '(tool-bar-mode nil))
