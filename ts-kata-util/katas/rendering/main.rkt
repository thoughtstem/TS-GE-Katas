#lang racket

(provide make-kata->X
         make-data->X
         make-expression->X)

(require "../main.rkt")

(define (struct->name s)
  (define struct-name (~a
                       (vector-ref (struct->vector s) 0)))
  (define parts (string-split struct-name ":"))
  (string-replace
   (last parts)
   "-"
   " "))


(define (make-stimulus->X string->X data->X Xs->X)
  (lambda(s)
    (define stimulus-name (struct->name s))

    (Xs->X
     (string->X stimulus-name)
     (data->X (stimulus-data s)))))

(define (make-response->X string->X data->X Xs->X)
  (lambda(s)
    (define response-name (struct->name s))

    (Xs->X
     (string->X response-name)
     (data->X (response-data s)))))

(define (test->string t)
  (define fields
    (rest (vector->list (struct->vector t))))
  
  (apply ~a
         (struct->name t) ": "
         (add-between
          fields
          " ")))

(define (tests->X string->X Xs->X ts)
  (apply Xs->X
         (map
          (compose string->X test->string)
          ts)))

(define (_make-kata->X string->X string2->X data->X Xs->X stimulus->X response->X)
  (lambda(k)
    (Xs->X
     (string->X (~a (kata-id k)))
     (tests->X string2->X Xs->X (kata-tests k))
     (stimulus->X (kata-stimulus k))
     (response->X (kata-response k)))))

(define (make-kata->X #:data->X   data->X
                      #:string1->X       string1->X
                      #:string2->X       (string2->X string1->X)
                      #:Xs->X     Xs->X)
  (define stimulus->X
    (make-stimulus->X string2->X data->X Xs->X))

  (define response->X
    (make-response->X string2->X data->X Xs->X))

  (define kata->X
    (_make-kata->X string1->X string2->X data->X Xs->X stimulus->X response->X))
  
  kata->X)

(define (make-data->X #:Xs->X           Xs->X
                      #:string->X       string->X
                      #:kata->X         kata->X
                      #:expression->X   expression->X
                      #:other?    (other? (thunk* #f))
                      #:other->X  (other->X identity))
  (define (r d)
    (cond [(string? d)       (string->X d)]
          [(list? d)         (apply Xs->X
                                    (map r d))]
          [(kata? d)         (kata->X d)]
          [(expression? d)   (expression->X d)]
          [(other? d)        (other->X d)]
          [else (error (~a "Unknown data type: " d))]))

  r)


(define (make-expression->X #:data+lang->X   data+lang->X
                            ;Add in hooks for rendering exprs
                            ; specially based on their language
                            )

  (define (r e)
    (define lang (expression-language e))
    (define data (expression-data e))

    (data+lang->X   data lang))
  
  r)





