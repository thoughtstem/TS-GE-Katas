#lang racket

(require ts-kata-util/katas/main
         2htdp/image)

(define (simple-picture-program d)
  (~a "#lang racket\n(require 2htdp/image)\n\n"
      (regexp-replace "'" (pretty-format d 50) "") ;Removes first quote, leaves rest.
      ))

(define-syntax-rule (simple-picture-kata noun code)
  (translate #:in (~a "Write code that produces an image of " noun ".")
             #:out (simple-picture-program 'code)))

(define-kata tree
  (simple-picture-kata "a green/brown tree"
                       (above
                        (circle 30 'solid 'green)
                        (rectangle 20 80 'solid 'brown))))

(define-kata house
  (simple-picture-kata "an aqua/blue house"
                       (above
                        (triangle 100 'solid 'aqua)
                        (square 100 'solid 'blue))))

(define-kata house-with-door
  (simple-picture-kata "an aqua/blue house with a brown door"
                       (above
                        (triangle 100 'solid 'aqua)
 
                        (overlay/align "middle" "bottom"
                                       (rectangle 30 50 'solid 'brown)
                                       (square 100 'solid 'blue)))))

(define-kata house-with-tree
  (simple-picture-kata "a aqua/blue house with a door, and a green/brown tree beside the house"
                       (beside/align "bottom"
                                     (above
                                      (triangle 100 'solid 'aqua)
 
                                      (overlay/align "middle" "bottom"
                                                     (rectangle 30 50 'solid 'brown)
                                                     (square 100 'solid 'blue)))
 
                                     (above
                                      (circle 30 'solid 'green)
                                      (rectangle 20 80 'solid 'brown)))))

(define-kata-collection simple-pictures
  house
  tree
  house-with-door
  house-with-tree)
