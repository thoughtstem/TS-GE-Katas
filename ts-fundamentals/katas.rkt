#lang racket

(provide katas
         core-values
         image->code-katas)

(require ts-kata-util/katas/main
         "./katas/image-to-code.rkt"
         "./katas/simple-pictures.rkt")

(define-kata core-values
  (recite
   #:in "What are our core values?"
   #:out (list "It's not about my code, it's about what I can code!"  
               "It's not about me; it's about my team!")))



(define proto-fundamentals
  (lang->kata-collection 'fundamentals))

(define-kata-collection fundamentals-shapes
  (translate #:id "Another Shape"
             #:in "Make a star that is gold and size 60 pixels."
             #:out '(star 60 'solid 'gold))
  (translate #:id "Favorite Color"
             #:in "Make a triangle of your favorite color and size 100."
             #:out '(triangle 100 'solid 'skyblue))
  (translate #:id "Not Solid?"
             #:in "Write five copies of the line below, filling in the blank with a word
                    that DOESN'T work!\n(circle 50 '_______ 'red)"
             #:out (~a "#lang racket\n\n"
                       (substring (~v '(circle 30 'blue 'red)) 1) "\n"
                       (substring (~v '(circle 30 'dotted 'red)) 1) "\n"
                       (substring (~v '(circle 30 'line 'red)) 1)))
  (translate #:id "Outline Shape"
             #:in "Make a square of size 150 with a purple outline."
             #:out '(triangle 100 'outline 'purple)))

(define-kata-collection fundamentals
  (fill-in-stimuli proto-fundamentals

                   'hello-world
                   (read "Make a circle that is red and 80 pixels wide.")))

(define-kata hello-world
  (first (kata-collection-katas fundamentals)))

(define-kata-collection unplugged
  core-values)

(define-kata-collection katas
  unplugged
  fundamentals
  fundamentals-shapes
  image->code-katas
  simple-pictures)


