#lang racket

(provide double-size)

(require 2htdp/image)

(define (double-width i)
  (define ls (image->color-list i)) 

  (define dls 
    (flatten (map list ls ls)))

  (color-list->bitmap dls 
                      (* 2 (image-width i))
                      (image-height i)))


(define (double-size i)
  (rotate -90
          (double-width
           (rotate 90 (double-width i)))))

#;(double-size (circle 20 'solid 'red))
