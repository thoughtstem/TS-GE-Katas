#lang at-exp racket

(provide kata-collection->scribble
         kata->scribble)

(require "./main.rkt" scribble/manual)

(define (response->scribble r)
  ;(second (response-data ))
  ;Gross......  Fix this
  (list
   (para (~a "You can write this " (first (response-data r)) " code:"))
   (codeblock (second
               (response-data r)))))

(define (stimulus->scribble s)
  ;(second (stimulus-data ))
  ;Gross......  Fix this
  (list
   (~a "When given this " (first (stimulus-data s)) " phrase: ")
   (bold
    (second
     (stimulus-data s)))))

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



