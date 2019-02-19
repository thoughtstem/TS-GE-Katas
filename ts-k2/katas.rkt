#lang racket

(provide katas)

(require ts-kata-util/katas/main
         ts-fundamentals/katas)

;Challenge, how do we do this, but without touching racket/gui/base???
(require ratchet
         (submod k2/lang/ocean/fish editor))

(typeset-code editor
              (green fish))

;Then map that across our katas to display both the adult and child
;  versions of the kata responses

(define katas
  (merge-collections
    (lang->kata-collection 'k2)))



