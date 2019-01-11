#lang at-exp racket

(provide kata-collection->scribble
         kata->scribble)

(require "./main.rkt" scribble/manual)

(define (known-languages)
  '(racket battle-arena))

(define (data->scribble d)
  (cond [(string? d)       d]
        [(list? d)         (~a d) #;(itemlist (map item d))]
        [(kata? d)         (kata->scribble d)]
        [(expression? d)   (expression->scribble d)]
        [else              (error (~a "Unknown data type" d))]))

(define (expression->scribble d)

  (if (member (expression-language d) (known-languages))
      (list
       (para (~a "This " (expression-language d) " expression"))
       (data->scribble (expression-data d)))
      (list
       (para (~a "This " (expression-language d) " expression"))
       (~a (expression-data d))
       #;(codeblock (~a (expression-data d))))
      ))

(define (response:code->scribble r)
  (list
   (bold "CODE:")

   (data->scribble (response-data r))
   
   #;(codeblock
      (~a (expression-data
           (response-data r))))))

(define (response:say->scribble r)
  (list
   (bold (~a "RECITE:"))
   
   (data->scribble (response-data r))))

(define (stimulus:read->scribble s)
  (list
   (bold "READ:")
   (data->scribble (stimulus-data s))))

(define (stimulus:hear->scribble s)
  (list
   (bold (~a "HEAR: "))
   (data->scribble (stimulus-data s))))

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



