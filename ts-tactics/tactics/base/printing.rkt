#lang racket

(provide print-tactic
         tactic->string)

(require "base-base.rkt"  ;Should only ever require base.  That's how we manage the complexity.  Adding new base forms requires adding new printing.  We shoudl avoid that as much as possible.  Adding to a language above base.rkt gives all thse printing facilities for free
         (prefix-in pp: pprint)) 


(define indentation-level 6)

(define (print-predicate p)
  (match p
    [(predicate pred thing)
     (pp:hs-append
       (print-object thing)
       (pp:text pred))]
    [(either this that)
     (pp:v-append
       (pp:nest indentation-level
                (pp:v-append
                  (pp:text "either:")
                  (print-predicate this)
                  ))
       (pp:nest indentation-level
                (pp:v-append
                  (pp:text "or:")
                  (print-predicate that))))]))


(define (print-verb v)
  (match v
    ;Like an assertion 
    [(branching-verb predicate true-verb false-verb)
     (pp:v-append 
       (pp:nest indentation-level
                (pp:v-append
                  (pp:hs-append 
                    (pp:text "If")
                    (print-predicate predicate))
                  (print-verb true-verb)
                  (print-verb false-verb))))]
    ;Like a "store" operation -- var dest = info 
    [(move english info dest) 
     (pp:v-append 
       (pp:nest indentation-level
                (pp:v-append
                  (pp:text (~a english ":")) 
                  (print-object info)))  
       (pp:nest indentation-level
                (pp:v-append
                  (pp:text "on:")
                  (print-object dest))))]
    ;Like an "update" operation -- var dest = (verb dest)
    ;Verb is some arbitrary function
    [(change verb dest)
     (pp:nest indentation-level
              (pp:v-append 
                (pp:text (~a verb ":")) 
                (print-object dest)))]
    [(body-action english)
     (pp:nest indentation-level
              (pp:text (~a english)))]
    [(directed-action verb english object)
     (pp:nest indentation-level
              (pp:hs-append 
                (print-verb verb)
                (pp:text (~a english ))
                (print-object object)))]
    [(adverb verb english)
     (pp:nest indentation-level
              (pp:hs-append 
                (print-verb verb)
                (pp:text (~a english))))]
    [_ (print-uninterpreted v)]))


(define (print-object d)
  (match d
    [(adjective english object) 
     (pp:h-append  
       (pp:text english) 
       (pp:text " ")
       (print-object object))]
    [_ 
      (if (string? d)
        (pp:text d)
        (print-uninterpreted d))]))

(define (print-instruction i)
  (if (list? i)
    (print-instructions i)
    (match i
      [(go-sub call)
       (pp:text (~a "GO SUB: " 
                    call
                    #;
                    (first call)))]
      [(supplies items)
       (pp:nest indentation-level
                (pp:v-append
                 (pp:text "SUPPLIES")
                 (apply pp:v-append
                       (map (compose pp:text
                                     ~a) items))))]
      [(tactic-key players minutes grade difficulty lines student-level)
       (pp:nest indentation-level
                (pp:v-append
                 (pp:text "TACTIC KEY")
                 (pp:v-append
                  (pp:text (~a "Players:    " players))
                  (pp:text (~a "Minutes:    " minutes))
                  (pp:text (~a "Grade:      " grade))
                  (pp:text (~a "Difficulty: " difficulty))
                  (pp:text (~a "Lines:      " lines))
                  (pp:text (~a "Player Lvl: " student-level)))))]
      [(image-group images)
       (apply pp:h-append (map (λ(img) (pp:text "[IMG]")) images))]
      [(tactic-image path scale)
       (pp:text "[IMG]")]
      [(instruction subject verb)
       (pp:nest indentation-level
                (pp:v-append
                  (pp:h-append
                    (pp:h-append
                      (print-subject (instruction-subject i))  
                      (pp:text " -> "))
                    (print-verb (instruction-verb i)))
                  ))]

      [(phase name instructions) 
       (pp:nest indentation-level
                (pp:v-append
                  (pp:text (string-titlecase (~a "" name "")))
                  (print-instructions instructions)))]

      [(tactic-section name instructions) 
       (pp:nest indentation-level
                (pp:v-append
                  (pp:text (string-upcase (~a "" name "")))
                  (print-instructions instructions)))]

      [(supplies items)
       (pp:nest indentation-level
                (pp:v-append
                 (pp:text "SUPPLIES")
                 (apply pp:v-append
                       (map (compose pp:text
                                     ~a) items))))]

      [(tell subject verb)
       (pp:nest indentation-level
                (pp:v-append
                 (pp:h-append
                  (pp:h-append (pp:text "Tell ")
                               (print-subject (tell-subject i))
                               (pp:text " to "))
                  (print-verb (tell-verb i)))
                 ))]

      [(until predicate instructions) 
       (pp:nest indentation-level
                (pp:v-append
                  (pp:hs-append
                    (pp:text (~a "Do Until"))
                    (print-predicate predicate))
                  (print-instructions instructions)))])))

(define/contract (print-instructions is)
  (-> (or/c list? instruction?) pp:doc?)

  (if (instruction? is)
    (print-instruction is)
    (apply pp:v-append
           (map print-instruction 
                is))))

(define/contract (print-subject s)
  (-> any/c pp:doc?)
  (match s
    [(group subjects)
     (if (empty? subjects)
       (pp:text "")
       (pp:h-append  
         (print-subject (first subjects))
         (pp:text " AND ")
         (print-subject (rest subjects))))]

    [(group-add a b)
       (pp:h-append  
         (print-subject a)
         (pp:text " AND ")
         (print-subject b)) ]

    [(group-subtract a b)
       (pp:h-append  
         (print-subject a)
         (pp:text " EXCLUDING ")
         (print-subject b)) ]

    [(adjective english object) 
     (pp:h-append  
       (pp:text (~a "" english)) 
       (pp:text " ")
       (print-object object))]

    [_ (pp:text (~a "" s))]))


(define (print-uninterpreted x)
  (pp:text (~a "[" x "]")))

(define (print-tactic t)
  (displayln
    (pp:pretty-format
      (print-instructions t))))



(define (tactic->string t)
  (pp:pretty-format
    (print-instructions t)))



