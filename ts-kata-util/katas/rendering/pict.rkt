#lang racket

(provide kata->pict)

(require "../main.rkt"
         "./main.rkt")

(require pict pict/code)

(define (_data->pict d)
  ((make-data->X
    #:Xs->X    vl-append
    #:string->X text
    #:expression->X _expr->pict
    #:kata->X   _kata->pict) d))

(define (_kata->pict k)
  ((make-kata->X
    #:string1->X (λ(s) (scale (text s) 2))
    #:string2->X (λ(s) (scale (text s) 1.5))
    #:data->X   (compose frame (curryr inset 10) _data->pict)
    #:Xs->X     (curry vl-append 10)) k))

(define (_expr->pict k)
  ((make-expression->X
    #:data+lang->X 
    (λ(d l)
      (cond [(kata? d) (_kata->pict d)]
            [(eq? l 'English) (text d)]
            [else (codeblock-pict #:keep-lang-line? #t (~a d))]
            )))
    k))

(define (kata->pict k)
  (_kata->pict k))

(module+ test
  (define k1
    (within #:minutes 5
            (translate #:in  "Two plus two"
                       #:out '(+ 2 2))))

  (define k2
    (within #:minutes 1
            (recite #:in   "The Core Values"
                    #:out  (list "It's not about my code; it's about what I can code."
                                 "It's not about me; it's about my team."))))


  (define k3
    (within #:minutes 5
            (teachback #:in k1
                       #:with-materials
                       '(whiteboard)))

    )



  k1
  (kata->pict k1)

  k2
  (kata->pict k2)

  k3
  (kata->pict k3)

  )










