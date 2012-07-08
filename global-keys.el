;; When writing programs and/or tex documents
(global-set-key [f1]   'compile)
(global-set-key [f2]   'next-error)
(global-set-key [C-f2] 'previous-error)
(global-set-key "\C-cc"  'comment-region)
(global-set-key "\C-cu"  'uncomment-region)
(global-set-key "\C-ch" 'hs-toggle-hiding)
;; Some useful key bindings.
(global-set-key [home] 'beginning-of-line)
(global-set-key [end] 'end-of-line)
(global-set-key [(control home)] 'beginning-of-buffer)
(global-set-key [(control end)] 'end-of-buffer)
;; Make control+pageup/down scroll the other buffer
(global-set-key [(control next)] 'scroll-other-window)
(global-set-key [(control prior)] 'scroll-other-window-down)
(define-key esc-map [right] 'kill-word)
(define-key esc-map [left] 'backward-kill-word)
;; Setup Alt Keys.
(global-set-key [(alt b)] `buffer-menu)
(global-set-key [(alt c)] `copy-region-as-kill)
(global-set-key [(alt g)] `goto-line)
;; Enable skeleton-pair insert keys globally.
(global-set-key (kbd "\(") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "[") 'skeleton-pair-insert-maybe)
;;(global-set-key (kbd "\{") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "\"") 'skeleton-pair-insert-maybe)
