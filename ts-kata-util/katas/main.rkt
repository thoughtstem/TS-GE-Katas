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
         (struct-out expression)

         set-id
         within
         recite
         read

         say
         do
         translate
         coach

         define-sub-collection
         define-sub-collections

         kata-id->kata-name


         define/provide ;This is too general for here...
         define-kata
         define-kata-collection)

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
  (kata 'TODO-id
        s r '()))

(struct expression (language data) #:transparent)

(struct test ()         #:transparent)
(struct response (data) #:transparent)
(struct stimulus (data) #:transparent)

;TODO: Other kinds of tests, e.g. response gets score X on test T
(struct test:within        test   (amount units)      #:transparent)
(struct test:with-material test   (type)              #:transparent)

(struct stimulus:read stimulus () #:transparent)
(struct stimulus:hear stimulus () #:transparent)

(struct response:code response () #:transparent)
(struct response:say  response () #:transparent)
(struct response:do   response () #:transparent)

(define (set-id i k )
  (struct-copy kata k
               [id i]))

(define-syntax-rule (define-kata id def)
  (begin (provide id)
         (define id
           (set-id 'id
                   def))))

(define-syntax-rule (define-kata-collection id kata ...)
  (begin (provide id)
         (define id
           (merge-collections
            kata ...))))

(define (code c #:lang (l 'racket))
  (response:code (expression l c)))

(define (read c #:lang (l 'English))
  (stimulus:read (expression l c)))

(define (say s)
  (response:say s))

(define (do s)
  (response:do s))

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

(define (coach k
               #:id (id 'TODO-id)
               #:with-materials (materials '()))
  (kata
   id
   (read k #:lang 'katas)
   (do  "Whatever is necessary to guide your fellow coach(es) through the four phases with this kata.")
   (map test:with-material materials)))


(define (recite #:in  kw
                #:out p)
  (kata
   'TODO-id
   (hear kw)
   (say  p)
   '()))

(define/contract (within #:minutes (minutes #f)
                         #:seconds (seconds #f)
                         t)
  (->* (kata?) (#:minutes positive?
                #:seconds positive?)
       kata?)

  (define time (or minutes seconds))

  (struct-copy kata t
               [tests (cons (test:within time (if minutes "minutes" "seconds")) (kata-tests t))]))



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




(define (filter-collection pred kc)
  ;Use lenses?
  (kata-collection
   (filter pred (kata-collection-katas kc))))

;TODO: Rewrite to be less stringy and more rackety
;  Read, parse into datum?
(define (num-expressions k)
  (define d (response-data (kata-response k)))

  (if (not (expression? d))
      0
      (sub1
       (length (string-split
                (expression-data d) "(")))))

(define (with-expression-count f n)
  (lambda (k)
    (f (num-expressions k)
       n)))



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

(define/contract (merge-collections . kcs)
  (->* () () #:rest (or/c kata-collection? kata? (listof kata?) (listof kata-collection?)) kata-collection?)

  ;Unpack to get down to bare katas and lists (of lists) thereof
  (define (f x)
    (cond
      [(kata-collection? x) (kata-collection-katas x)]
      [(list? x) (map f x)]
      [else x]))
  
  (define l (flatten (map f kcs)))
  
  (kata-collection l))

(define (pairify ps)
    (if (empty? ps)
        '()
        (cons (take ps 2)
              (pairify (drop ps 2)))))

(define (fill-in-stimuli kc . ps)
  (define pairs (pairify ps))

  (kata-collection
   (map
    (λ(k)
      (define p (findf (λ(p)
                         (eq? (first p)
                              (kata-id k)))
                       pairs))
      (if p
          (struct-copy kata k
                       [stimulus (second p)])
          k))
    (kata-collection-katas kc))))


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
                                                   (kata-id->kata-name 'category-name)
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
                                                   (kata-id->kata-name 'category-name)
                                                   ""
                                                   )))
            base)))]))

(define-syntax-rule (define-sub-collections base name ...)
  (begin
    (define-sub-collection base name)
    ...))

(define (kata-id->kata-name s)
  (string-titlecase
   (regexp-replace*
    #rx"[0-9]*"
    (regexp-replace*
     #rx"-"
     (~a s)
     " ")
    "")))

(define (kata-name k)
  (kata-id->kata-name (kata-id k)))


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



