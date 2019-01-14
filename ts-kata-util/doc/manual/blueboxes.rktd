231
((3) 0 () 1 ((q lib "ts-kata-util/main.rkt")) () (h ! (equal) ((c form c (c (? . 0) q define-example-code)) q (0 . 2)) ((c def c (c (? . 0) q get-example-code)) q (60 . 4)) ((c def c (c (? . 0) q get-example-names)) q (172 . 3))))
syntax
(define-example-code lang example-name expr ...)
procedure
(get-example-code lang example-name) -> string?
  lang : symbol?
  example-name : symbol?
procedure
(get-example-names lang) -> (listof symbol?)
  lang : symbol?
