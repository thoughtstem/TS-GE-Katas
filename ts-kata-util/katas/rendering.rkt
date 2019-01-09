#lang at-exp racket

(provide kata-collection->scribble
         kata->scribble)

(require "./main.rkt" scribble/manual)

(define (response:code->scribble r)
  ;(second (response-data ))
  ;Gross......  Fix this
  (list
   (para (~a "You can write this " (first (response-data r)) " code:"))
   (codeblock (second
               (response-data r)))))

(define (response:say->scribble r)
  (define data (response-data r))
  (list
   (para (~a "You recite this:"))
   (if (list? data)
       (itemlist (map item data))
       (bold data))))

(define (stimulus:read->scribble s)
  (list
   (~a "When given this " (first (stimulus-data s)) " phrase: ")
   (bold
    (second
     (stimulus-data s)))))

(define (stimulus:hear->scribble s)
  (list
   (~a "When hearing this: ")
   (bold
    (stimulus-data s))))

(define (response->scribble r)
  (cond [(response:code? r) (response:code->scribble r)]
        [(response:say? r)  (response:say->scribble r)]
        [else (error "Unknown response type")]))

(define (stimulus->scribble s)
  ;(second (stimulus-data ))
  ;Gross......  Fix this
  (cond [(stimulus:read? s) (stimulus:read->scribble s)]
        [(stimulus:hear? s) (stimulus:hear->scribble s)]
        [else (error "Unknown stimulus type")]))

(define (kata->scribble k
                        #:befores (befores (list)))
  (list
   ;(tests->scribble (kata-tests k))
   (map (λ(f) (f k)) befores)
   (stimulus->scribble (kata-stimulus k))
   (response->scribble (kata-response k))))

(define (kata-collection->scribble kc
                                   #:befores (before-each (list )))
  (map (curry kata->scribble
              #:befores before-each)
       (kata-collection-katas kc)))



