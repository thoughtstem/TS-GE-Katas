#lang typed/racket

(provide 
  ;Subjective pronouns...
  you

  ;Top levels
  (struct-out tactic-key)
  (struct-out tactic-section)
  (struct-out tactic-image)
  (struct-out image-group)
  (struct-out supplies)
  (struct-out instruction)
  (struct-out tell)
  (struct-out phase)
  (struct-out until)
  (struct-out go-sub)
  (struct-out supply-item)

  ;Verbs
  (struct-out move)
  (struct-out change)
  (struct-out set-object)
  (struct-out body-action) 
  (struct-out branching-verb)
  (struct-out repeat)
  verb

  ;Adjectives
  (struct-out adjective)

  ;Adverbs
  (struct-out adverb)
  (struct-out directed-action)
  
  ;Logic
  (struct-out predicate) 
  (struct-out either) 
  (struct-out both)
  
  ;Set theory
  (struct-out group)
  (struct-out group-add)
  (struct-out group-subtract)

  string-titlecase-first
  string-downcase-first
  remove-the-from
  unpluralize)

(require typed/pict)

(define-type Top-form (U tactic-section instruction phase until go-sub tell tactic-image image-group pict))
(define-type Thing    (U Symbol String Modified-Thing)) ;Allow Strings because things can be sentences...
(define-type Person   (U Symbol Modified-Person))
(define-type Place    (U Symbol Modified-Place))

(define-type Modified-Thing (U adjective))
(define-type Modified-Person (U adjective))
(define-type Modified-Place (U adjective))

(define-type Noun     (U Person Place Thing))

(define-type Subject  (U Person Group))

(define-type Group    (U group group-add group-subtract))

(define-type Verb     (U Alter Query Modified-Verb repeat))
(define-type Modified-Verb (U adverb directed-action))

(define-type Alter   (U move change set-object
                        body-action 
                        branching-verb))
(define-type Query   (U predicate either both))

(define-type Value (U String Symbol Number))

(struct tactic-key ([players : Value]
                    [minutes : Value]
                    [grade : Value]
                    [difficulty : Value]
                    [lines : Value]
                    [student-level : Value]
                    [players-string : String])
  #:transparent)

(struct supplies ([items : (Listof (U Thing supply-item))]) #:transparent)

(struct supply-item ([item : Thing]
                     [clause : String]) #:transparent)

(struct tell ([subject : Subject]
              [verb : Verb])
  #:transparent)
             

(struct instruction ([subject : Subject] 
                     [verb : Verb]
                     [figure : (U pict #f)])
  #:transparent)

(struct tactic-section ([name : Symbol] 
                        [instructions : (Listof Top-form)]) #:transparent
  )

(struct tactic-image ([path : Path-String]
                      [scale : Number]
                      [draw-border? : Boolean]) #:transparent)

(struct image-group ([images : (Listof tactic-image)]) #:transparent)

(struct phase ([name : Symbol] 
               [instructions : (Listof Top-form)]) #:transparent
  )
(struct until ([query : Query] 
               [instructions : (Listof Top-form)]) #:transparent)



;Verbs
(struct move  ([english : String] 
               [thing : Noun] 
               [place : Place]) #:transparent)

(struct change ([english : String] 
                [thing : Noun]) #:transparent)

; Set timer for 5 minutes. 
(struct set-object ([object : Noun]
                    [english : String]
                    [thing : Noun]) #:transparent)

(struct repeat ([phase : Symbol]
                [clause : String]) #:transparent)


(struct predicate ([english : String] 
                   [thing : Noun]) #:transparent)

(struct either ([a-pred : Query]
                [b-pred : Query]) #:transparent)

(struct both ([a-pred : Query]
              [b-pred : Query]) #:transparent)

(struct body-action ([english : String]) #:transparent)

(define verb body-action)

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
                         [object : Noun]) #:transparent)



(struct adverb ([action : Verb]
                [english : String]) #:transparent)



(struct group ([subjects : (Listof Subject)]) #:transparent)
(struct group-add ([a : Subject]
                   [b : Subject]) 
  #:transparent)

(struct group-subtract ([a : Subject]
                        [b : Subject]) 
  #:transparent)

(define you 'you)



(struct go-sub
  ([call : Any]))

(define (string-titlecase-first str)
  (define str-list (string-split (~a str)))
  (string-join (cons (string-titlecase (first str-list))
                     (rest str-list))))

(define (string-downcase-first str)
  (define str-list (string-split (~a str)))
  (string-join (cons (string-downcase (first str-list))
                     (rest str-list))))

(define (remove-the-from thing)
  (string-replace (string-trim (~a thing) "the-")
                  "-" " "))
            
(define (unpluralize thing)
  (string-replace (string-trim (string-trim (~a thing) "s" #:left? #f)
                               "the-")
                  "-" " "))



