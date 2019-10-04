#lang racket 

(provide syntax->pict)

(require pict pict/code syntax/parse/define syntax/parse)

(define (get-expr-list stx)
  (syntax-parse stx
     #:datum-literals (syntax)
     [(module id lang stuff ...) 
      (syntax-e #'(stuff ...))]
     ))

(define (syntax->lang-line-pict stx)
  (syntax-parse stx
     #:datum-literals (syntax)
     [(module id lang stuff ...) 
      (text (~a "#lang " (syntax->datum #'lang))
            (current-code-font))]
     ))

(define (syntax->pict s)
  (apply (curry vl-append 20)
         (syntax->lang-line-pict s)
         (map typeset-code
              (get-expr-list s))))

