#lang racket

(provide tactic->scribble)

(require "base-base.rkt"
         scribble/base
         (only-in scribble/core
                  style
                  color-property)
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
         (gray d)
         d)
        (gray
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

(define (tactic->scribble t)
  (instruction->scribble t))

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
     (nest
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
       (~a english )   
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
       (~a verb )   
       " "
       (object->scribble dest))]
    [(body-action english)
     (list
       (~a english))]
    [(directed-action verb english object)
     (list
       (verb->scribble verb)
       " " 
       english
       " " 
       (object->scribble object))]
    [(adverb verb english)
     (list 
       (verb->scribble verb)
       (nest english))]
    [_ 
      (~a v)]))


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
       (nest
         (list
           (bold
             (subject->scribble subject))
           " "
           (arrow 10 0)
           " "
           (verb->scribble verb)))]

      [(phase name instructions) 

       (list ;nested #:style 'code-inset
         (bold (string-upcase (~a name )))
         (instructions->scribble instructions)) ]

      [(until predicate instructions) 
       (nest
         (bold (string-upcase "Until"))  
         (hspace 1)
         (predicate->scribble predicate)
         (hspace 1)
         (bold (string-upcase "Do"))  
         (instructions->scribble instructions)) ])))


(define (instructions->scribble i)
  (if (instruction? i)
    (instruction->scribble i)
    (map instruction->scribble i)))



