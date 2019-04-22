#lang racket

(require pict
         (only-in pict/code codeblock-pict)
         "../challenge-cards/main.rkt")

(define HEIGHT 600)
(define WIDTH HEIGHT)


;Use this design: https://www.makeplayingcards.com/design/custom-small-square-cards.html


(define bg 
  (colorize 
    (filled-rectangle WIDTH HEIGHT)
    "white"))

(define (front-side i)
  (cc-superimpose bg 
                  i))

(define (back-side i)
  (cc-superimpose bg
                  i)) 

(define (get-example-code path)
  (define-values (ret unk) 
    (module->exports path))

  (apply append
         (map
           (compose 
             (curryr drop 3) ;To get rid of the (module __ __ ...) 
             syntax->datum  
             (curry example-name->code path))
           (map first
                (rest (first ret))))))

(define (example-name->code path en)
  (dynamic-require path en))

(define user-defined '())
(define (filter-out-non-identifiers l )

  (when 
    (and (list? l)
         (< 1 (length l))
         (list? (second l))
         (eq? 'define (first l))) 
    (set! user-defined (cons (first (second l))
                             user-defined)))

  (cond
    [(string? l) '_____]
    [(string-prefix? (~a l) "my-") '_____]
    [(boolean? l) '_____]
    [(number? l) '_____]
    [(member l user-defined) '_____]
    [(and (list? l)
          (eq? 'quote (first l))) 
     '_____]
    [(list? l) (map filter-out-non-identifiers l)]
    [else l]))

(define (frequency-hash l (h (hash)))
  (if (empty? l) 
    h
    (frequency-hash (rest l)
                    (if (hash-has-key? h (first l))
                      (hash-update h (first l) add1)
                      (hash-set h (first l) 1)))))

(define (pair->list p)
  (list (car p) (cdr p)))

(define (adjust-frequency-for-printing max-to-print l)

  (define upper (second (last l)))

  (define factor (/ max-to-print upper))

  (map (lambda (p)
         (list (first p)
               (ceiling (* factor (second p))))) 
       l))

(define (get-ids-with-frequency path)
  (map pair->list 
       (sort
         (hash->list
           (frequency-hash
             (filter (negate (curry eq? '_____))
                     (flatten
                       (filter-out-non-identifiers
                         (get-example-code path))))))
         <
         #:key cdr)))

(define (filter-out-keywords fl)
  (filter-not 
    (lambda (p)
      (string-prefix? (~a (first p)) "#:")) 
    fl))

(define (total-cards frequency-list)
  (apply + (map second frequency-list)))

(define (id->back id)
  ;Fails on 'define
  (define thing (dynamic-require 'battlearena-avengers id))
  
  (if (procedure? thing)
    (list
      id
      (procedure-arity thing) 
      (let-values 
        [((whatthis??? kws)  (procedure-keywords thing))]
        kws)) 

    (list id "What's that?" id))
  
  )

(define (test)
  (local-require battlearena-avengers/examples)
  
  (adjust-frequency-for-printing 1
     (get-ids-with-frequency 'battlearena-avengers/examples)))


(map id->back
     (map first
          (filter-out-keywords
            (test))))    

(total-cards
  (test))

