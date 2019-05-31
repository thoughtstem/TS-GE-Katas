#lang typed/racket

(provide 
  ;Top levels
  (struct-out instruction)
  (struct-out phase)
  (struct-out until)

  ;Verbs
  (struct-out move)
  (struct-out change)
  (struct-out body-action) 
  (struct-out branching-verb) 

  ;Adjectives
  (struct-out adjective)

  ;Adverbs
  (struct-out directed-action)
  
  ;Logic
  (struct-out predicate) 
  (struct-out either) 
  (struct-out both))

(define-type Top-form (U instruction phase until))
(define-type Thing    (U Symbol String Modified-Thing)) ;Allow Strings because things can be sentences...
(define-type Person   (U Symbol Modified-Person))
(define-type Place    (U Symbol Modified-Place))

(define-type Modified-Thing (U adjective))
(define-type Modified-Person (U adjective))
(define-type Modified-Place (U adjective))

(define-type Noun     (U Person Place Thing))

(define-type Subject  (U Person Group))
(define-type Group    (Listof Subject))

(define-type Verb     (U Alter Query Modified-Verb))
(define-type Modified-Verb (U directed-action))

(define-type Alter   (U move change 
                        body-action 
                        branching-verb))
(define-type Query   (U predicate either both))


(struct instruction ([subject : Subject] 
                     [verb : Verb])
  #:transparent)

(struct phase ([name : Symbol] 
               [instructions : (Listof Top-form)]) #:transparent)
(struct until ([query : Query] 
               [instructions : (Listof Top-form)]) #:transparent)



;Verbs
(struct move  ([english : String] 
               [thing : Noun] 
               [place : Place]) #:transparent)

(struct change ([english : String] 
                [thing : Noun]) #:transparent)

(struct predicate ([english : String] 
                   [thing : Noun]) #:transparent)

(struct either ([a-pred : Query]
                [b-pred : Query]) #:transparent)

(struct both ([a-pred : Query]
              [b-pred : Query]) #:transparent)

(struct body-action ([english : String]))

;A special verb.
;   Expresses that "subject" must perform "predicate", which is a query verb (true or false result), and then perform either the true or false branch (which are also verbs)
(struct branching-verb ([predicate : predicate] 
                        [true-verb : Verb] 
                        [false-verb : Verb])
  #:transparent)


;Adjective (Functions that take a noun and return a noun)

(struct adjective ([english : String] 
                   [object : Noun]) #:transparent)


;Adverbs (Functions that take a verb and return a verb)

(struct directed-action ([action : Verb]
                         [english : String]
                         [object : Noun]))


