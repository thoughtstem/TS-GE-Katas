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
  image->code-katas
  simple-pictures)


