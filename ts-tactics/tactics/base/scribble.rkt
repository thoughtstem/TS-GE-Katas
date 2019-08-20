#lang racket

(provide tactic->scribble)

(require "base-base.rkt"
         scribble/base
         scribble/html-properties
         scribble/latex-properties
         (only-in scribble/core
                  style
                  color-property
                  background-color-property)
         (only-in scribble/manual
                  codeblock)
         pict)

(define (nest . ss)
  (nested #:style 'inset
          ss))

(define (gray . ss)
  (elem #:style 
        (style #f (list (color-property (list 100 100 100))))
        ss))

(define (orange . ss)
  (elem #:style 
        (style #f (list (color-property (list 210 106 51))))
        ss))

(define (blue . ss)
  (elem #:style 
        (style #f (list (color-property (list 88 90 252))))
        ss))

(define (object->scribble d)
  (match d
    [(adjective english object) 
     (list
       english   
        " "
       (object->scribble object))]
    [_ 
      (if (string? d)
        (if (regexp-match #px"\"" d)
         (orange d)
         d)
        (orange
          (~a "[" d "]")))]))

(define (predicate->scribble p)
  (match p
    [(predicate pred thing)
     (list ;nest
       (object->scribble thing)
       " "
       pred)]
    [(either this that)
     (list
       (list
         (nest
           (bold (string-upcase "either:"))
           " "
           (predicate->scribble this)))
       (list
         (nest
           (bold (string-upcase "or:"))
           " "
           (predicate->scribble that))))]))

(define run-kata-challenge
  (phase 'Kata-Challenge
          (list (instruction 'tactics-master
                             (body-action (~a "Call in the coach when you and the rest of the players are ready for your kata"
                                              " challenge. Pass the challenge to earn your kata!"))))))

(define (tactic->scribble t)
  (if (list? t)
      (instruction->scribble (append t (list run-kata-challenge)))
      (instruction->scribble (list t run-kata-challenge))))

(define (subject->scribble s)
  (match s
    [(group subjects)
     (if (empty? subjects)
       (nest "")
       (nest (subject->scribble (first s))
             (nest " AND ")
             (subject->scribble (rest s))))

     (if (empty? subjects)
       (nest "")
       (nest
         (subject->scribble (first subjects))
         (nest " AND ")
         (subject->scribble (rest subjects))))]

    [(group-add a b)
     (list
       (subject->scribble a)
       " AND "  
       (subject->scribble b)) ]

    [(group-subtract a b)
     (list
       (subject->scribble a)
       " EXCLUDING "  
       (subject->scribble b)) ]

    [(adjective english object) 
     (list
       (~a "" english)   
       " "
       (object->scribble object))]

    [_ (~a "" s)]))


(define (verb->scribble v)
  (match v
    ;Like an assertion 
    [(branching-verb predicate true-verb false-verb)
     (list
       (list
         (bold (string-upcase "If"))
         (hspace 1)
         (predicate->scribble predicate))
       (nest (verb->scribble true-verb))
       (bold (string-upcase "Else"))
       (nest (verb->scribble false-verb)))]
    ;Like a "store" operation -- var dest = info 
    [(move english info dest) 
     (list
       (bold (first (string-split (~a english ))))
       " "
       (string-join (rest (string-split (~a english))))
       " "
       (object->scribble info) 
       " "
       "on"     
       " "
       (object->scribble dest))]
    ;Like an "update" operation -- var dest = (verb dest)
    ;Verb is some arbitrary function
    [(change verb dest)
     (list
       (bold (first (string-split (~a verb ))))
       " "
       (string-join (rest (string-split (~a verb))))
       " "
       (object->scribble dest))]
    [(body-action english)
     (list
       (bold (first (string-split (~a english ))))
       " "
       (string-join (rest (string-split (~a english)))))]
    [(directed-action verb english object)
     (list
       (verb->scribble verb)
       " " 
       english
       " " 
       (object->scribble object))]
    [(set-object object english thing)
     (list (bold "Set")
           " "
           (object->scribble object)
           " "
           english
           " "
           thing)]
    [(adverb verb english)
     (list 
       (verb->scribble verb)
       (nest english))]
    [_ 
      (~a v)]))

(define phase-name-style
  (style "PhaseName"
         '()))

(define (verb-downcase-first v)
  (cond [(move? v)         (let ([str (move-english v)])
                             (struct-copy move v
                                          [english (string-downcase-first str)]))]
        [(change? v)       (let ([str (change-english v)])
                             (struct-copy change v
                                          [english (string-downcase-first str)]))]
        [(set-object? v)   (let ([str (set-object-english v)])
                             (struct-copy set-object v
                                          [english (string-downcase-first str)]))]
        [(body-action? v)  (let ([str (body-action-english v)])
                             (struct-copy body-action v
                                          [english (string-downcase-first str)]))]
        [(predicate? v) v]
        [else (error "That wasn't a known verb.")]))

(define (instruction->scribble i)
  (if (list? i)
    (instructions->scribble i)
    (match i
      [(go-sub call)
       (nest 
         (bold (string-upcase "GO SUB: ")) 
         (codeblock
           "#lang ts-tactics\n\n"
           (substring (~v call) 1)))]
      [(instruction subject verb)
       (list
           ;(bold
           ;  (subject->scribble subject))
           ;" "
           ;(arrow 10 0)
           ;(arrowhead 10 0)
           ;" "
           (verb->scribble verb))]

      [(tell subject verb)
       (list
         ;(arrowhead 10 0)
         ;" "
         (bold "Tell")
         " "
         (object->scribble subject)
         " to "
         (verb->scribble (verb-downcase-first verb)))]

      [(phase name instructions) 
       ;(elem #:style 
        ;(style #f (list (color-property (list 100 100 100))))
        ;ss))
       (list ;nested #:style 'code-inset
         (elem #:style phase-name-style (string-upcase (string-replace (~a name ) "-" " ")))
         (nest (apply (curry itemlist #:style (if (= (length instructions) 1)
                                                  #f
                                                  (style 'ordered (list (attributes (list (cons 'start "1"))))))) ;starting index doesn't work for pdf
                      (map item (instructions->scribble instructions))))) ]
      
      [(supplies items)
       (list
        (elem #:style phase-name-style "SUPPLIES")
        (nest (apply itemlist (map (compose item
                                            string-titlecase
                                            (curryr string-replace "-" " ")
                                            (curryr string-trim "the-")
                                             ~a) items))))]
      [(until predicate instructions) 
       (list
         (bold (string-upcase "Until"))  
         (hspace 1)
         (predicate->scribble predicate)
         (hspace 1)
         (bold (string-upcase "Do"))  
         (linebreak)
         (instructions->scribble instructions)) ])))


(define (instructions->scribble i)
  (if (instruction? i)
    (instruction->scribble i)
    (map instruction->scribble i)
    ))



