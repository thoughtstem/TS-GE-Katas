#lang racket

(provide katas)

(require ts-kata-util/katas/main
         ts-battle-arena/katas/read-code-stimuli
         )

;Katas start as examples in some langauge.
;  "Proto katas" we could call them.
(define battle-arena-proto-katas
  (lang->kata-collection 'battle-arena-starwars))

;The main thing these "proto katas" are missing
;  is a clear stimulus.  (The response is simply "write the code")
;Here we'll craft the stimuli, using the langauge that's appropriate
;  for this kata collection.
(define katas
  (apply fill-in-stimuli battle-arena-proto-katas stimuli))



