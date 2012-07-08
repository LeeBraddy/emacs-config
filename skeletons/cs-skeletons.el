;;(global-set-key "\C-c(" 'llb-insert-parens)
;;(global-set-key "\C-c{" 'llb-insert-curlys)
;;(global-set-key "\C-ct" 'llb-insert-try-catch)
;;(global-set-key (kbd "C-c \"")  'llb-insert-empty-string-dq)
;;(global-set-key (kbd "C-c \'")  'llb-insert-empty-string-a)
;;(global-set-key (kbd "C-c C-i conl") 'llb-cs-ins-cons-wrtln)
;;(global-set-key (kbd "C-c C-i conw") 'llb-cs-ins-cons-wrt)

;; Insert try catch block.
(define-skeleton cs-try-catch
  "C sharp Try Catch statement."
  nil
  "try {" > n
  - n
  "}" > n
  "catch (Exception exc) {" > n n
  "}" > )

;; C sharp Console.WriteLine statement skeleton.
(define-skeleton cs-con-writeline
  "C sharp Console.WriteLine statement."
  nil
  "Console.WriteLine(\"" - "\");" > )

;; C sharp Console.Write statement skeleton.
(define-skeleton cs-con-write
  "C sharp Console.Write statement."
  nil
  "Console.Write(\"" - "\");" > )
