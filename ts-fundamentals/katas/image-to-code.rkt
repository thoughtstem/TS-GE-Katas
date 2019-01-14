#lang racket

(provide image->code-kata)

(require ts-kata-util/katas/main
         2htdp/image)

(define (simple-image-program d)
  (~a "#lang racket\n(require 2htdp/image)\n\n"
      (regexp-replace "'" (pretty-format d 50) "") ;Removes first quote, leaves rest.
      ))

;Consider moving this to a more general location?
;  If you're about to duplicate it, do that instead.  Don't duplicate it.
(define-syntax-rule (image->code-kata code)
  (let ([i code])
    (translate #:in  (list "Write the simplest code possible to make this shape:"
                           i
                           (~a "(Note: This shape is "
                               (image-width i)  " pixels wide and "
                               (image-height i) " pixels tall)"))
               #:out (simple-image-program 'code))))

(define-kata image-to-code-1
  (image->code-kata (circle 30 'solid 'red)))

(define-kata image-to-code-2
  (image->code-kata (circle 30 'solid 'green)))

(define-kata image-to-code-3
  (image->code-kata (circle 75 'solid 'cyan)))

(define-kata image-to-code-4
  (image->code-kata (square 50 'solid 'blue)))

(define-kata image-to-code-5
  (image->code-kata (star 30 'solid 'gold)))

(define-kata image-to-code-6
  (image->code-kata (square 30 'solid 'LightSalmon)))

(define-kata image-to-code-7
  (image->code-kata (triangle 50 'outline 'purple)))

(define-kata beside-1
  (image->code-kata (beside (square 50 'solid 'blue)
                            (circle 25 'solid 'green))))

(define-kata beside-2
  (image->code-kata (beside
                     (circle 20 'solid 'red)
                     (circle 20 'solid 'red))))


(define-kata above-1
  (image->code-kata (above
                     (triangle 50 'solid 'blue)
                     (triangle 80 'solid 'purple))
                    ))

(define-kata overlay-1
  (image->code-kata (overlay
                     (square 50 'solid 'blue)
                     (square 80 'solid 'purple))))

(define-kata-collection image->code-katas
  image-to-code-1
  image-to-code-2
  image-to-code-3
  image-to-code-4
  image-to-code-5
  image-to-code-6
  image-to-code-7
  beside-1
  beside-2
  above-1
  overlay-1)
