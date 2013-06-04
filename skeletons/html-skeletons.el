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
  "&#x" )

;; Unicode en dash.
(define-skeleton html-unicode-en-dash
  "Unicode en dash."
  nil
  "&#x2013;" )

;; Unicode en dash.
(define-skeleton html-unicode-em-dash
  "Unicode em dash."
  nil
  "&#x2014;" )

;; Unicode Right Quote.
(define-skeleton html-unicode-right-single-quote
  "Unicode right single quote."
  nil
  "&#x2019;" )

;; Unicode Left Quote.
(define-skeleton html-unicode-left-single-quote
  "Unicode left single quote."
  nil
  "&#x2018;" )

;; Unicode Single Quotes.
(define-skeleton html-unicode-single-quotes
  "Unicode single quotes."
  nil
  "&#x2018;" - "&#x2019;" )

;; Unicode Left Double Quote.
(define-skeleton html-unicode-left-double-quote
  "Unicode left double quote."
  nil
  "&#x201C;" )

;; Unicode Right Double Quote.
(define-skeleton html-unicode-right-double-quote
  "Unicode right double quote."
  nil
  "&#x201D;" )

;; Unicode Double Quotes.
(define-skeleton html-unicode-double-quotes
  "Unicode double quotes."
  nil
  "&#x201C;" - "&#x201D;" )

;; HTML apostrophe.
(define-skeleton html-apostrophe
  "HTML apostrophe."
  nil
  "&apos;" _ )

;; HTML left single quote.
(define-skeleton html-left-single-quote
  "HTML left single quote."
  nil
  "&lsquo;" )

;; HTML right single quote.
(define-skeleton html-right-single-quote
  "HTML right single quote."
  nil
  "&rsquo;" )

;; HTML Single Quotes.
(define-skeleton html-single-quotes
  "HTML single quotes."
  nil
  "&lsquo;" - "&rsquo;" )


;; HTML left double quote.
(define-skeleton html-left-double-quotes
  "HTML left double quotes."
  nil
  "&ldquo;" )

;; HTML right double quote.
(define-skeleton html-right-double-quotes
  "HTML right single quotes."
  nil
  "&rdquo;" )

;; HTML Double Quotes.
(define-skeleton html-double-quotes
  "HTML double quotes."
  nil
  "&ldquo;" - "&rdquo;" )

;; HTML List Item.
(define-skeleton html-list-item
  "HTML list item."
  nil
  > "<li>" - "</li>" )


;; HTML h1.
(define-skeleton html-h1
  "HTML h1."
  nil
  > "<h1>" - "</h1>" )

;; HTML Paragraph.
(define-skeleton html-paragraph
  "HTML paragraph."
  nil
  "<p>" > n
  - n
  "</p>" > )

