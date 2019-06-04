#lang racket

(provide print-tactic)

(require "base-base.rkt"  ;Should only ever require base.  That's how we manage the complexity.  Adding new base forms requires adding new printing.  We shoudl avoid that as much as possible.  Adding to a language above base.rkt gives all thse printing facilities for free
         (prefix-in pp: pprint)) 


(define indentation-level 3)

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
    [_ (print-uninterpreted v)]))


(define (print-object d)
  (match d
    [(adjective english object) 
     (pp:h-append  
       (pp:text english) 
       (pp:text " ")
       (print-object object))]
    [_ 
      (print-uninterpreted d)]))

(define (print-instruction n i)
  (match i
    [(instruction subject verb)
     (pp:nest indentation-level
              (pp:v-append
                (pp:v-append
                  (pp:h-append
                    (print-subject (instruction-subject i))  
                    (pp:text ":"))
                  (print-verb (instruction-verb i)))
                ))]

    [(phase name instructions) 
     (pp:nest indentation-level
              (pp:v-append
                (pp:text (~a "<" name " Phase>"))
                (print-instructions instructions)))]

    [(until predicate instructions) 
     (pp:nest indentation-level
              (pp:v-append
                (pp:text (~a "until:"))
                (print-predicate predicate)
                (print-instructions instructions)))]))

(define/contract (print-instructions is)
  (-> list? pp:doc?)

  (apply pp:v-append
    (map print-instruction 
         (range 1 (add1 (length is))) 
         is)))

(define/contract (print-subject s)
  (-> any/c pp:doc?)
  (match s
    [(adjective english object) 
     (pp:h-append  
       (pp:text english) 
       (pp:text " ")
       (print-object object))]

    [_ (pp:text (~a s))]))


(define (print-uninterpreted x)
  (pp:text (~a "[" x "]")))

(define (print-tactic t)
  (displayln
    (pp:pretty-format
      (print-instructions t))))



