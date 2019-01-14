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
  (image->code-kata (beside (square 50 'solid 'blue)
                            (circle 25 'solid 'green))))

(define-kata-collection image->code-katas
  image-to-code-1
  image-to-code-2
  image-to-code-3
  image-to-code-4
  image-to-code-5)
