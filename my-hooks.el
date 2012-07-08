;; Mail Stuff.
(defun llb-mail-mode-hook ()
  (turn-on-auto-fill) ;;; Auto-Fill is necessary for mails
  (turn-on-font-lock) ;;; Font-Lock is always cool *g*
  (flyspell-mode) ;;; Turn on spell check
  (flush-lines "^\\(> \n\\)*> -- \n\\(\n?> .*\\)*")
                      ;;; Kills quoted sigs.
  (setq make-backup-files nil)
                      ;;; No backups necessary.
  (insert "\n")
  (backward-char 1))
(or (assoc "mutt-" auto-mode-alist)
    (setq auto-mode-alist (cons '("mutt-" . mail-mode) auto-mode-alist)))
(add-hook 'mail-mode-hook 'llb-mail-mode-hook)
;; End of Mail Stuff.

;; My Custom shortcuts for cc-mode.
(defun my-make-CR-do-indent ()
  (define-key c-mode-base-map "\C-m" 'c-context-line-break))
(add-hook 'c-initialization-hook 'my-make-CR-do-indent)

;; HTML.
(add-hook 'html-mode-hook
	  '(lambda ()
	     (load "skeletons/html-skeletons")
             (setq show-trailing-whitespace t)
	     ;; Use spaces instead of tabs.
	     (setq indent-tabs-mode nil)
	     (turn-on-font-lock)
             ))

;; Java.
(add-hook 'java-mode-hook
	  '(lambda ()
	     (load "skeletons/c-common-skeletons")
	     (load "skeletons/java-skeletons")
;;             (local-unset-key "{")
             (local-unset-key "(")
	     (hs-minor-mode)
             (local-set-key "\C-cht" 'hs-toggle-hiding)
             (local-set-key "\C-cha" 'hs-hide-all)
             (local-set-key "\C-csa" 'hs-show-all)
	     (local-set-key (kbd "\'") 'skeleton-pair-insert-maybe)
             (setq show-trailing-whitespace t)
	     ;; Use spaces instead of tabs.
	     (setq indent-tabs-mode nil)
	     (turn-on-font-lock)
	     (auto-fill-mode)
             (setq skeleton-pair t)
;;           (setq c-basic-offset 8)
;;	     (c-set-offset 'substatement-open 0)
;;	     (c-set-offset 'topmost-intro-cont 0)
;;	     (c-set-offset 'block-open 0)
             ))

;; C sharp.
(add-hook 'csharp-mode-hook
	  '(lambda ()
	     (load "skeletons/c-common-skeletons")
	     (load "skeletons/cs-skeletons")
             (local-unset-key "{")
             (local-unset-key "(")
	     (hs-minor-mode)
             (local-set-key "\C-cht" 'hs-toggle-hiding)
             (local-set-key "\C-cha" 'hs-hide-all)
             (local-set-key "\C-csa" 'hs-show-all)
             (setq show-trailing-whitespace t)
	     (turn-on-font-lock)
	     (auto-fill-mode)
             (setq skeleton-pair t)
             (setq c-basic-offset 8)
	     (c-set-offset 'substatement-open 0)
	     (c-set-offset 'topmost-intro-cont 0)
	     (c-set-offset 'block-open 0)
))

;; C++.
(add-hook 'c++-mode-hook
	  '(lambda ()
	     (load "skeletons/c-common-skeletons")
	     (load "skeletons/c++-skeletons")
             ;;(local-unset-key "{")
             (local-unset-key "(")
	     (hs-minor-mode)
             (local-set-key "\C-cht" 'hs-toggle-hiding)
             (local-set-key "\C-cha" 'hs-hide-all)
             (local-set-key "\C-csa" 'hs-show-all)
             (setq show-trailing-whitespace t)
	     (turn-on-font-lock)
	     (auto-fill-mode)
             (setq skeleton-pair t)
             (setq c-basic-offset 8)
))

;; Term mode.
(add-hook 'term-mode-hook
          '(lambda ()
             (setq show-trailing-whitespace nil)))

;; makefile mode
(add-hook 'makefile-mode-hook
          '(lambda ()
             (setq show-trailing-whitespace t)))

;; Turn on spell check for latex-mode
(add-hook 'LaTeX-mode-hook 'flyspell-mode)

;; SGML, XHTML, XML
;;(add-hook 'sgml-mode-hook
;;          '(lambda ()
;;             (add-to-list 'sgml-custom-dtd '(
;;"XHTML 1.0 Transitional"
;;"<!DOCTYPE html PUBLIC
;;    \"-//W3C//DTD XHTML 1.0 Transitional//EN\" 
;;    \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">"))
;;	     ))
