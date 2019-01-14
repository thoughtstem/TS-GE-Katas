#lang at-exp racket

(provide kata-collection->scribble
         kata->scribble)

(require "../main.rkt"
         "./main.rkt")

(require scribble/manual)


(define (_kata->scribble k (befores (list )))
  (define extras (map (λ(b) (b k)) befores))
  
  ((make-kata->X
    #:string1->X (if (empty? extras)
                     subsection
                     (thunk* extras))
    #:string2->X (compose para bold)
    #:data->X   _data->scribble
    #:Xs->X     list) k))

(define (_data->scribble d)
  ((make-data->X
    #:Xs->X         list
    #:string->X     para
    #:expression->X _expr->scribble
    #:kata->X       _kata->scribble) d))



(require "./pict.rkt" pict)
(define (_expr->scribble k)

  (define  (f d l)
    (cond [(kata? d) ((compose frame (curryr inset 10))
                      (kata->pict d))]
          [(and (eq? l 'English)
                (list? d))
           (map (curryr f l) d)]
          [(and (eq? l 'English)
                (not (list? d)))
           (para d)]
          [else (codeblock #:keep-lang-line? #t (~a d))]))
  
  ((make-expression->X
    #:data+lang->X f)
    k))

(define (kata->scribble k #:befores (before-each (list )))
  (parameterize ([handle-kata-id kata-id->kata-name])
    (_kata->scribble k before-each))

  )

(define (kata-collection->scribble kc #:befores (before-each (list )))
  (map (curry kata->scribble #:befores before-each)
       (kata-collection-katas kc)))

