;; Insert curlies.
(define-skeleton c-curlies
  "Empty code block."
  nil
  > "{" > n
  > - n
  "}" > )

;; Insert if else block.
(define-skeleton c-if-else
  "If else statement."
  nil
  > "if (" - ") {" n n
  "} else {" > n n
  "}" > )

;; Insert if block.
(define-skeleton c-if
  "If statement."
  nil
  > "if (" - ") {" n n
  "}" > )

;; Insert while loop.
(define-skeleton c-while
  "While loop statement."
  nil
  > "while (" - ") {" n n
  "}" > )

;; Insert for loop.
(define-skeleton c-for
  "For loop statement."
  nil
  > "for (int i=0; i < " - "; i++) {" n n
  "}" > )
