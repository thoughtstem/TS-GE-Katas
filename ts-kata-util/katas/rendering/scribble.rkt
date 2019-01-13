#lang at-exp racket

(provide kata-collection->scribble
         kata->scribble)

(require "../main.rkt"
         "./main.rkt")

(require scribble/manual)

(define (kata-table stim resp)
  @tabular[#:sep @hspace[1]
           (list (list @bold{Stim} @bold{Resp})
                 (list stim       resp))])



(define (_kata->scribble k (befores (list )))
  (define extras (map (λ(b) (b k)) befores))
  
  ((make-kata->X
    #:string1->X (if (empty? extras)
                     subsection
                     (thunk* extras))
    #:string2->X (compose para bold)
    #:data->X   _data->scribble
    #:Xs->X     list) k))

(define (_data->scribble d (befores '()))
  ((make-data->X
    #:Xs->X    list
    #:string->X para
    #:expression->X _expr->scribble
    #:kata->X   _kata->scribble) d))



(require "./pict.rkt" pict)
(define (_expr->scribble k (befores '()))
  ((make-expression->X
    #:data+lang->X 
    (λ(d l)
      (cond [(kata? d) (frame (kata->pict #;_kata->scribble d))]
            [(eq? l 'English) (para d)]
            [else (codeblock #:keep-lang-line? #t (~a d))])))
    k))

(define (kata->scribble k #:befores (before-each (list )))
  (_kata->scribble k before-each))

(define (kata-collection->scribble kc #:befores (before-each (list )))
  (map (curry kata->scribble #:befores before-each)
       (kata-collection-katas kc)))

