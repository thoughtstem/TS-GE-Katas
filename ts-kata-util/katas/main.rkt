#lang at-exp racket

;Split out kata lang, and kata collection name
(provide example->kata
         lang->kata-collection
         merge-collections
         filter-collection
         has-keyword?
         num-expressions
         find-by-id
         fill-in-stimuli
         
         kata-name
         name-contains?
         
         (struct-out response)
         (struct-out stimulus)
         (struct-out kata)
         make-kata
         (struct-out kata-collection)
         (struct-out response:code)
         (struct-out response:say)
         (struct-out stimulus:read)
         (struct-out stimulus:hear)
         (struct-out expression)

         set-id
         within
         recite
         read
         say
         translate

         define-sub-collection
         define-sub-collections

         ;This is too general for here...
         define/provide)

;(require scribble/manual)


;TODO: Clarify all this with contracts
;TODO: Clarify further with docs
;TODO: Write tests


;Defines what kata and kata collections are...


;Kata. A small, self-contained, micro-unit designed by a kata designer. 
;  Form. A Kata must be written down, and must articulate two things:
;    A description of an observable behaviour (e.g. “write this code”, “say this phrase”).
;    A desired level of mastery over that behaviour (e.g. “in under 5 minutes”)

;We'll take the definition above and say that katas... Or they can be converted into such a thing...

;A task is a stimulus + response + test(usually time)
;  Plus tags?  Unsure about that one...  No let's leave that out.
;   Where possible, we should be querying based on stimulus, response, and tests.
;  Start tagging things and they'll get out of sync quickly...
(struct kata (id stimulus response tests) #:transparent)

(define (make-kata s r)
  (kata 'TODO-id s r '()))

(struct expression (language data) #:transparent)

(struct test ()         #:transparent)
(struct response (data) #:transparent)
(struct stimulus (data) #:transparent)

;TODO: Other kinds of tests, e.g. response gets score X on test T
(struct test:within     test   (minutes)      #:transparent)

(struct stimulus:read stimulus () #:transparent)
(struct stimulus:hear stimulus () #:transparent)

(struct response:code response () #:transparent)
(struct response:say  response () #:transparent)

(define (set-id i k )
  (struct-copy kata k
               [id i]))

(define (code c #:lang (l 'racket))
  (response:code (expression l c)))

(define (read c #:lang (l 'English))
  (stimulus:read (expression l c)))

(define (say s)
  (response:say s))

(define (hear s)
  (stimulus:hear s))


;====== Kata CONSTRUCTORS ======

;A kata that defines translating from a high level natural language
;  to code
(define (translate #:id (id 'TODO-id)
                   #:in           p
                   #:in-lang      (from-lang 'English)
                   #:out          c
                   #:out-lang     (in-lang 'racket))
  (kata
   id
   (read p
         #:lang from-lang)
   (code c
         #:lang in-lang)
   '()))


(define (recite #:in  kw
                #:out p)
  (kata
   'TODO-id
   (hear kw)
   (say  p)
   '()))

(define/contract (within #:minutes time t)
  (-> #:minutes number? kata? kata?)

  (struct-copy kata t
               [tests (cons (test:within time) (kata-tests t))]))



(module+ test
  (within #:minutes 5
          (translate #:in  "Two plus two"
                     #:out '(+ 2 2)))

  (within #:minutes 1
          (recite #:in   "The Core Values"
                  #:out  (list "It's not about my code; it's about what I can code."
                               "It's not about me; it's about my team."))) )

; ======= COLLECTIONS =======

(struct kata-collection (katas) #:transparent)

(require "../main.rkt")
(define (example->kata lang example-id)
  (translate #:id example-id
             #:in-lang 'English
             #:in  "????"
             #:out-lang lang
             #:out (get-example-code lang example-id))

  )

(define (kata-size>? k1 k2)
  (<
   (string-length (~a k1))
   (string-length (~a k2))))

(define (lang->kata-collection lang)
  (kata-collection
   (sort
    (map (curry example->kata lang)
         (get-example-names lang))
    kata-size>?)))






;Ways of displaying kata collections
;  Gross use of (second ...)
(require pict/code pict)
(define (response->pict r)
  (cond [(response:code? r)
         (codeblock-pict
          #:keep-lang-line? #t
          (expression-data (response-data r)))]
        [else (error "TODO")]))

(define (stimulus->pict r)
  (cond [(stimulus:read? r)
         (text (expression-data (stimulus-data r)))]
        [else (error "TODO")]))

(define (kata->pict k)
  (match-define (kata id
                      stim
                      resp
                      tests)
    k)
  
  (vl-append 10
             (text (~a (kata-id k)))
             (stimulus->pict stim)
             (response->pict resp))

  )

(define (display-collection kc)
  (map kata->pict
       (kata-collection-katas kc)))

(define (filter-collection pred kc)
  ;Use lenses?
  (kata-collection
   (filter pred (kata-collection-katas kc))))

;TODO: Rewrite to be less stringy and more rackety
;  Read, parse into datum?
(define (num-expressions k)
  (sub1
   (length (string-split
           (expression-data (response-data (kata-response k))) "("))))

(define (with-expression-count f n)
  (lambda (k)
    (f (num-expressions k)
       n)))

(module+ test
  (require rackunit)
  
  (check-equal? 3
   (num-expressions (example->kata 'battle-arena 'enemy-1)))

  (display-collection
   (filter-collection
    (with-expression-count <= 3)
    (lang->kata-collection 'battle-arena)))

  )
 

;Another query: has-keyword?
;  Can combine with with-expression-count
;  (with-keyword-argument '#:avatar
;     (with-expression-count <= 3))
;  This would check the expression count of the argument given
;    for the keyword #:avatar

(define (data-has-keyword? kw d)
  (string-contains? (~a d) (~a kw)))

(define (stimulus-has-keyword? kw s)
  (data-has-keyword? kw (stimulus-data s)))

(define (response-has-keyword? kw r)
  (data-has-keyword? kw (response-data r)))

(define (has-keyword? kw k)
  (or (stimulus-has-keyword? kw (kata-stimulus k))
      (response-has-keyword? kw (kata-response k))))


(define (find-by-id id kc)
  (define ret
    (findf (λ(k) (eq? id (kata-id k))) (kata-collection-katas kc)))

  (and (not ret)
       (error (~a "No kata with id " id)))
  
  ret)

(define (merge-collections . kcs)
  (kata-collection
   (apply append (map kata-collection-katas kcs))))

(define (fill-in-stimuli kc . ps)
  (define (pairify ps)
    (if (empty? ps)
        '()
        (cons (take ps 2)
              (pairify (drop ps 2)))))
  
  (kata-collection
   (map (λ(p) (struct-copy kata (find-by-id (first p) kc)
                           [stimulus (second p)]
                           ))

        (pairify ps))))


;For organizing katas into sub collections...

(define-syntax (define-sub-collection stx)
  (syntax-case stx ()
    [(_ base (category-name stipulation ...))
     #'(begin
         (provide category-name)
         (define category-name
           (filter-collection
            (and/c
             (curryr name-contains? (regexp-replace #rx" Katas"
                                                   (titleify 'category-name)
                                                   ""
                                                   ))
             stipulation ...)
            base)))]
    [(_ base category-name) 
     #'(begin
         (provide category-name)
         (define category-name
           (filter-collection
            (and/c
             (curryr name-contains? (regexp-replace #rx" Katas"
                                                   (titleify 'category-name)
                                                   ""
                                                   )))
            base)))]))

(define-syntax-rule (define-sub-collections base name ...)
  (begin
    (define-sub-collection base name)
    ...))

(define (titleify s)
  (string-titlecase
   (regexp-replace*
    #rx"[0-9]*"
    (regexp-replace*
     #rx"-"
     (~a s)
     " ")
    "")))


(define (kata-name k)
  (titleify (kata-id k)))


(define (name-contains? k s)
  (string-contains? (kata-name k) s))



;Easy way to get an overview of kata collection.
;  E.g. Distribution over num expressions.



;Sorting.  Sort by length


;Extract out all identifiers in the collection (e.g. for morugamu cards)

;Ways of augmenting katas, collections, etc.  Adding input prompts, e.g.?

;Tagging?  Grouping?  Sequencing?  Etc..
;  Easily specifying meta data based on lang example id:
;   'enemy-1 --> "Make a battle arena game with a custom enemy..."


;Defining a kata as a transformation on another kata...
;Defining a kata collection as a transformation on another collection...


;Camp/ASP/...
;  How to specify diff organizational structures for one collection...
;  (per-day
;    (katas 5)
;    (~> (lang->collection 'battle-arena)
;        (with-title-set battle-arena-titles _)
;        (order-by ($$ (keywords '#:avatar '#:enemy-list ...)
;           expression-count) ))
;    )


;Next level up, gamification...







;Next level up, rendering....

(define-syntax-rule (define/provide id stuff ...)
  (begin
    (provide id)
    (define id stuff ...)))



