;; Cite Reference.
(define-skeleton html-cite-ref
  "Cite Reference."
  "Enter Cite Reference Number: "
  "<sup id=\"cite_ref-" str 
  "\"><a href=\"#cite_note-" str 
  "\">[" str "]</a></sup>"
  )

;; Cite Note.
(define-skeleton html-cite-note
  "Cite Note."
  "Enter Cite Note Number: "
  "<li id=\"cite_note-" str "\"><a href=\"#cite_ref-" 
  str "\" class=\"up-ref\">^</a>" > n
  - n
  "</li>" >
  )

;; Bible Verse Reference.
(define-skeleton html-bible-verse
  "Bible Verse."
  "Enter Bible Verse Reference: "
  "<span class=\"verse-ref\">" str "</span><span class=\"verse-text\">" > n
  - n
  "</span>" >
  )

;; Unicode Hex Escape.
(define-skeleton html-unicode-escape
  "Start unicode escape."
  nil
  "&#x" > )

;; Unicode en dash.
(define-skeleton html-unicode-nd
  "Unicode en dash."
  nil
  "&#x2013;" > )

;; Unicode en dash.
(define-skeleton html-unicode-md
  "Unicode em dash."
  nil
  "&#x2014;" > )

;; Unicode Right Quote.
(define-skeleton html-unicode-rq
  "Unicode right quote."
  nil
  "&#x2019;" > )

;; Unicode Left Quote.
(define-skeleton html-unicode-lq
  "Unicode left quote."
  nil
  "&#x2018;" > )

;; Unicode Single Quotes.
(define-skeleton html-unicode-sqs
  "Unicode single quotes."
  nil
  "&#x2018;" > - > "&#x2019;" > )

;; Unicode Left Double Quote.
(define-skeleton html-unicode-ldq
  "Unicode left double quote."
  nil
  "&#x201C;" > )

;; Unicode Right Double Quote.
(define-skeleton html-unicode-rdq
  "Unicode right double quote."
  nil
  "&#x201D;" > )

;; Unicode Double Quotes.
(define-skeleton html-unicode-dqs
  "Unicode double quotes."
  nil
  "&#x201C;" > - > "&#x201D;" > )

