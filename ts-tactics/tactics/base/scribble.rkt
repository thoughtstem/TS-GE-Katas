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
         pict
         racket/runtime-path
         racket/draw
         )

; =========== TACTICS KEY ============
(define-runtime-path clock-icon-path "./img/clock-icon.png")
(define-runtime-path people-icon-path "./img/people-icon.png")
(define-runtime-path grad-cap-icon-path "./img/grad-cap-icon.png")
(define-runtime-path challenge-icon-path "./img/challenge-icon.png")
(define-runtime-path lines-of-code-icon-path "./img/lines-of-code-icon.png")
(define-runtime-path stairs-icon-path "./img/stairs-icon.png")

(define clock-icon (inset (scale-to-fit (bitmap clock-icon-path) 30 30) 2))
(define people-icon (inset (scale-to-fit (bitmap people-icon-path) 30 30) 2))
(define grad-cap-icon (inset (scale-to-fit (bitmap grad-cap-icon-path) 30 30) 2))
(define challenge-icon (inset (scale-to-fit (bitmap challenge-icon-path) 30 30) 2))
(define lines-of-code-icon (inset (scale-to-fit (bitmap lines-of-code-icon-path) 30 30) 2))
(define stairs-icon (inset (scale-to-fit (bitmap stairs-icon-path) 30 30) 2))

(define (key-line icon value unit #:color [color (make-color 0 200 0)])
  (hc-append 10
             icon
             (colorize (text (~a value #:min-width 5 #:align 'left) (cons 'bold 'modern) 20) color)
             (text unit 'default 16)))

(define tactics-light-gray (make-color 220 220 220))
(define tactics-green      (make-color 188 222 160))
(define tactics-dark-green (make-color 0 150 0))
(define tactics-orange     (make-color 210 106 51))
(define tactics-blue       (make-color 88 90 252))

(define (draw-tactic-key players minutes grade difficulty lines student-level players-string)
  (define contents (vl-append (key-line people-icon        players       players-string      #:color tactics-orange )
                              (key-line clock-icon         minutes       "minutes"           #:color tactics-orange )
                              (key-line grad-cap-icon      grade         "grade level"       #:color tactics-orange )
                              (key-line challenge-icon     difficulty    "TM difficulty"     #:color tactics-orange )
                              (key-line lines-of-code-icon lines         "lines of code"             #:color tactics-orange )
                              (key-line stairs-icon        student-level (~a (unpluralize players-string)
                                                                             " difficulty")  #:color tactics-orange )
                              ))
  (define W (pict-width contents))
  (define H (pict-height contents))
  (inset (cc-superimpose ;(filled-rounded-rectangle (+ 16 W) (+ 16 H) -0.1 #:color tactics-light-gray #:border-width 2)
                         (scale contents 0.95)
                         ) 4))

; ========= END OF TACTICS KEY =========

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

(define (tactic->scribble t)
  (if (instruction? t)
      (nest (itemlist (item (instruction->scribble t))))
      (instruction->scribble t)))

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
       "onto"     
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
    [(repeat phase clause)
     (list (bold "Repeat")
           " "
           (italic (string-titlecase (string-replace (~a phase) "-" " ")))
           clause)]
    [(adverb verb english)
     (list 
       (verb->scribble verb)
       (nest english))]
    [_ 
      (~a v)]))

(define phase-name-style
  (style "PhaseName"
         '()))

(define tactic-section-name-style
  (style "TacticSectionName"
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
        [(directed-action? v) (struct-copy directed-action v
                                           [action (verb-downcase-first (directed-action-action v))])]
        [else (error "That wasn't a known verb.")]))



(define pict-style
  (style "Pict"
         '()))

(define tactic-key-style
  (style "TacticKey"
         '()))

(define image-border-style
  (style "ImageBorder"
         '()))

(define (render-tactic-image ti)
  (image (tactic-image-path ti)
         #:scale (tactic-image-scale ti)
         #:style (if (tactic-image-draw-border? ti)
                     image-border-style
                     #f)
         ))

(define (thing->supply thing)
  ((compose string-titlecase
            (curryr string-replace "-" " ")
            (curryr string-trim "the-")
            ~a) thing))

(define (instruction->scribble i)
  (cond [(list? i) (instructions->scribble i)]
        [(pict? i) (centered (elem #:style pict-style i))]
        [else (match i
                [(tactic-key players minutes grade difficulty lines student-level players-string)
                 (let ([key (draw-tactic-key players minutes grade difficulty lines student-level players-string)])
                   (elem #:style tactic-key-style key))]
                [(image-group images)
                 (apply centered (map render-tactic-image images))]
                [(tactic-image path scale draw-border?)
                 (centered (image path
                                  #:scale scale
                                  #:style (if draw-border?
                                              image-border-style
                                              #f)))]
                [(go-sub call)
                 (nest 
                  (bold (string-upcase "GO SUB: ")) 
                  (codeblock
                   "#lang ts-tactics\n\n"
                   (substring (~v call) 1)))]
                [(instruction subject verb figure)
                 (if figure
                     (list (verb->scribble verb)
                           "."
                           (centered (elem #:style pict-style figure)))
                     (list (verb->scribble verb)
                           "."))]
                [(tell subject verb)
                 (list
                  ;(arrowhead 10 0)
                  ;" "
                  (bold "Tell")
                  " "
                  (object->scribble subject)
                  " to "
                  (verb->scribble (verb-downcase-first verb))
                  ".")]

                [(phase name instructions) 
                 ;(elem #:style 
                 ;(style #f (list (color-property (list 100 100 100))))
                 ;ss))
                 (list ;nested #:style 'code-inset
                  (italic (string-titlecase (string-replace (~a name) "-" " ")))
                  (nest (apply (curry itemlist #:style (if (= (length instructions) 1)
                                                           #f
                                                           (style 'ordered (list (attributes (list (cons 'start "1"))))))) ;starting index doesn't work for pdf
                               (map item (instructions->scribble instructions))))) ]

                [(tactic-section name instructions)
                 (list
                  (elem #:style tactic-section-name-style (string-upcase (string-replace (~a name) "-" " ")))
                  (if ((listof instruction?) instructions)
                      (nest (apply (curry itemlist #:style (if (= (length instructions) 1)
                                                               #f
                                                               (style 'ordered (list (attributes (list (cons 'start "1"))))))) ;starting index doesn't work for pdf
                                   (map item (instructions->scribble instructions))))
                      (nest (instructions->scribble instructions)))) ]
      
                [(supplies items)
                 (list
                  (elem #:style tactic-section-name-style "SUPPLIES")
                  (nest (apply itemlist (map (λ (thing)
                                               (if (supply-item? thing)
                                                   (item (~a (thing->supply (supply-item-item thing))
                                                             (supply-item-clause thing)))
                                                   (item (thing->supply thing))))
                                               items))))]
                [(until predicate instructions) 
                 (list
                  (bold (string-upcase "Until"))  
                  (hspace 1)
                  (predicate->scribble predicate)
                  (hspace 1)
                  (bold (string-upcase "Do"))  
                  (linebreak)
                  (nest (apply itemlist (map item (instructions->scribble instructions))))) ]
                )]
        ))


(define (instructions->scribble i)
  (if (instruction? i)
    (instruction->scribble i)
    (map instruction->scribble i)
    ))



