#lang slideshow

(provide ratchet-social-slide
         ratchet-computer-slide
         ratchet-kata-slides)

(require ts-kata-util/katas/main
         ts-kata-util/katas/rendering/pict)

(define (extract-ratchet-social k)
  (third
   (expression-data
    (expression-data
     (stimulus-data (kata-stimulus k))))))

(define (extract-ratchet-computer k)
  (third
   (expression-data
    (response-data (kata-response k)))))

(define (ratchet-social-slide k)
  (slide (extract-ratchet-social k)))

(define (ratchet-computer-slide k)
  (slide (para (expression-data (stimulus-data (kata-stimulus k))))
         (extract-ratchet-computer k)))

(define (ratchet-kata-slides k)
  (slide (para (expression-data (stimulus-data (kata-stimulus k)))))
  (slide (extract-ratchet-computer k)))
