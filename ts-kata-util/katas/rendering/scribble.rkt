#lang at-exp racket

(provide kata-collection->scribble
         kata->scribble)

(require "../main.rkt"
         "./main.rkt")

(require scribble/manual)

(define (_data->scribble d)
  ((make-data->X
    #:Xs->X    list
    #:string->X para
    #:expression->X _expr->scribble
    #:kata->X   _kata->scribble) d))

(define (_kata->scribble k)
  ((make-kata->X
    #:string1->X subsection
    #:string2->X bold
    #:data->X   _data->scribble
    #:Xs->X     list) k))

(define (_expr->scribble k)
  ((make-expression->X
    #:data+lang->X 
    (λ(d l)
      (cond [(kata? d) (_kata->scribble d)]
            [(eq? l 'English) (para d)]
            [else (codeblock #:keep-lang-line? #t (~a d))]
            )))
    k))

(define (kata->scribble k)
  (_kata->scribble k))

(define (kata-collection->scribble kc #:befores (before-each (list )))
  (map kata->scribble
       (kata-collection-katas kc)))

