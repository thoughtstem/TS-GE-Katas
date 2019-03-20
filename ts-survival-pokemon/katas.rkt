#lang racket

(provide survival-pokemon-katas)

(require ts-kata-util/katas/main
         ts-survival/katas/read-code-stimuli
         ts-survival/katas/read-code-tips
         (prefix-in new: "./katas/read-code-stimuli.rkt")
         (prefix-in new: "./katas/read-code-tips.rkt")
         )

;The main thing these "proto katas" are missing
;  is a clear stimulus.  (The response is simply "write the code")
;Here we'll craft the stimuli, using the langauge that's appropriate
(define survival-proto-katas
  (apply fill-in-tips
         (apply fill-in-tips
                (apply fill-in-stimuli
                       (apply fill-in-stimuli (collapse-alts
                                               (lang->kata-collection 'survival-pokemon))
                              stimuli)
                       new:stimuli)
                tips)
         new:tips))

;Katas start as examples in some language.
;  "Proto katas" we could call them.
(define survival-pokemon-katas
  (remap-ids
   '(("avatar-(\\d*)" "pokemon-\\1")
     ("enemy-(\\d*)" "trainer-\\1")
     ("coin-(\\d*)" "stone-\\1")
     ("npc-(\\d*)" "friend-\\1")
     ("bg-(\\d*)" "town-\\1")
     ("weapon-(\\d*)" "attack-\\1")
     )
   survival-proto-katas
   )

  )



(define-sub-collections survival-pokemon-katas
  hello-world-katas
  pokemon-katas
  food-katas
  stone-katas
  trainer-katas
  crafter-katas
  friend-katas
  sky-katas
  level-design-katas
  town-katas
  starvation-rate-katas)




