;;-*-coding: emacs-mule;-*-
(autoload 'expand-abbrev-hook "expand")

(define-abbrev-table 'awk-mode-abbrev-table '(
    ))

(define-abbrev-table 'c++-mode-abbrev-table '(
    ("ret" "return" nil 0)
    ("fl" "" c-for 0)
    ("ifb" "" c-if 0)
    ("ife" "" c-if-else 0)
    ("tcb" "" c++-try-catch 0)
    ("wl" "" c-while 0)
    ("cb" "" c-curlies 0)
    ("co" "cout <<" nil 0)
    ("ci" "cin >>" nil 0)
    ))

(define-abbrev-table 'c-mode-abbrev-table '(
    ("ret" "return" nil 0)
    ("fl" "" c-for 0)
    ("ifb" "" c-if 0)
    ("ife" "" c-if-else 0)
    ("wl" "" c-while 0)
    ("cb" "" c-curlies 0)
    ))

(define-abbrev-table 'csharp-mode-abbrev-table '(
    ("ret" "return" nil 0)
    ("cw" "" cs-con-write 0)
    ("cwl" "" cs-con-writeline 0)
    ("fl" "" c-for 0)
    ("ifb" "" c-if 0)
    ("ife" "" c-if-else 0)
    ("tcb" "" cs-try-catch 0)
    ("wl" "" c-while 0)
    ("cb" "" c-curlies 0)
    ))

(define-abbrev-table 'java-mode-abbrev-table '(
    ("inter" "interface" nil 0)
    ("prot" "protected" nil 0)
    ("priv" "private" nil 0)
    ("pub" "public" nil 0)
    ("bool" "boolean" nil 0)
    ("ret" "return" nil 0)
    ("main" "" java-main 0)
    ("pl" "" java-println 0)
    ("pt" "" java-print 0)
    ("fl" "" c-for 0)
    ("ifb" "" c-if 0)
    ("ife" "" c-if-else 0)
    ("tcb" "" java-try-catch 0)
    ("tcfb" "" java-try-catch-finally 0)
    ("get" "" java-getter 0)
    ("set" "" java-setter 0)
    ("wl" "" c-while 0)
    ("cb" "" c-curlies 0)
    ))

(define-abbrev-table 'html-mode-abbrev-table '(
    ("citeref" "" html-cite-ref 0)
    ("citenote" "" html-cite-note 0)
    ("bibv" "" html-bible-verse 0)
    ("u8" "" html-unicode-escape 0)
    ("nd" "&ndash;" nil 0)
    ("md" "&mdash;" nil 0)
    ("lsq" "&lsquo" nil 0)
    ("rsq" "&rsquo;" nil 0)
    ("sq" "" html-single-quotes 0)
    ("ldq" "&ldquo;" nil 0)
    ("rdq" "&rdquo;" nil 0)
    ("dq" "" html-double-quotes 0)
    ("apos" "" html-apostrophe 0)
    ("li" "" html-list-item 0)
    ("para" "" html-paragraph 0)
    ("hh1" "" html-h1 0)
    ))

(define-abbrev-table 'fundamental-mode-abbrev-table '(
    ))

(define-abbrev-table 'global-abbrev-table '(
    ))

(define-abbrev-table 'idl-mode-abbrev-table '(
    ))

(define-abbrev-table 'lisp-mode-abbrev-table '(
    ))

(define-abbrev-table 'objc-mode-abbrev-table '(
    ))

(define-abbrev-table 'pike-mode-abbrev-table '(
    ))

(define-abbrev-table 'text-mode-abbrev-table '(
    ))

