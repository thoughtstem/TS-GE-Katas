#lang racket

(require ts-kata-util
  ;You probably want to require your language here...
  LANGUAGE-NAME
  )

;And you probably want your lang, not racket below.
;  But technically you can make examples for any language
(define-example-code racket my-example-1
  (require 2htdp/image)

  (circle 40 'solid 'red))
