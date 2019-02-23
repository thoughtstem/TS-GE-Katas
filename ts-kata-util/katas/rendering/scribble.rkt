#lang at-exp racket

(provide kata-collection->scribble
         kata->scribble
         side-note
         side-note*)

(require "../main.rkt"
         "./main.rkt")

(require scribble/manual)


(define (_kata->scribble k (befores (list )))
  (define extras (filter identity (map (λ(b) (b k)) befores)))
  
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

  (if (kata? kc)
      (kata->scribble kc #:befores before-each)
      (map (curry kata->scribble #:befores before-each)
           (kata-collection-katas kc)))

  )

(define (side-note #:icon [icon '()] header . body )
  ;@margin-note*{@bold{Review/Introduce:} meaning of #lang ts-camp-jam-1, battle-arena-game, avatar, keyword.}

  (list
   (margin-note icon
                (bold (~a header ": "))
                body)

   )

  )

(define (side-note* #:icon [icon '()] header . body )
  ;@margin-note*{@bold{Review/Introduce:} meaning of #lang ts-camp-jam-1, battle-arena-game, avatar, keyword.}

  (list
   (margin-note* icon
                (bold (~a header ": "))
                body)

   )

  )

