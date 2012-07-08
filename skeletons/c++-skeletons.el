;; Insert try catch block.
(define-skeleton c++-try-catch
  "C++ Try Catch statement."
  nil
  "try {" > n
  - n
  "}" > n
  "catch (exception exc) {" > n n
  "}" > )
;; cout <<
(define-skeleton c++-cout
  "C++ cout statement."
  nil
  "cout << " - > )
;; cin >>
(define-skeleton c++-cin
  "C++ cin statement."
  nil
  "cin >> " - > )
