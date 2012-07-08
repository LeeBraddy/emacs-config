;; Insert main.
(define-skeleton java-main
  "Java main method statement."
  nil
  "public static void main(String[] args) {" > n
  - n
  "}" > )

;; Insert try catch block.
(define-skeleton java-try-catch
  "Java Try Catch statement."
  nil
  "try {" > n
  - n
  "}" > " catch (Exception e) {" > n n
  "}" > )

;; Insert try catch finally block.
(define-skeleton java-try-catch-finally
  "Java Try Catch statement."
  nil
  "try {" > n
  - n
  "}" > " catch (Exception e) {" > n n
  "}" > " finally {" > n n
  "}" > )

(define-skeleton java-getter
  "Java getter method."
  nil
  "public " > - " get() {" > n 
  "return thing;" > n
  "}" > )

(define-skeleton java-setter
  "Java setter method."
  nil
  "public void set" > - "(type thing) {" > n 
  "this.thing = thing;" > n
  "}" > )

;; Java out.println statement.
(define-skeleton java-println
  "Java out.println statement."
  nil
  "System.out.println(" > - ");" > )

;; Java out.print statement.
(define-skeleton java-print
  "Java out.print statement."
  nil
  "System.out.print(" > - ");" > )
