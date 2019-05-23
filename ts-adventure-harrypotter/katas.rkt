#lang racket

(provide adventure-harrypotter-katas)

(require ts-kata-util/katas/main
         ts-adventure/katas/read-code-stimuli
         ts-adventure/katas/read-code-tips
         (prefix-in new: "./katas/read-code-stimuli.rkt")
         (prefix-in new: "./katas/read-code-tips.rkt")
         )

;The main thing these "proto katas" are missing
;  is a clear stimulus.  (The response is simply "write the code")
;Here we'll craft the stimuli, using the langauge that's appropriate
(define adventure-proto-katas
  (apply fill-in-tips
         (apply fill-in-tips
                (apply fill-in-stimuli
                       (apply fill-in-stimuli (collapse-alts
                                               (lang->kata-collection 'adventure-harrypotter))
                              stimuli)
                       new:stimuli)
                tips)
         new:tips))


;Katas start as examples in some language.
;  "Proto katas" we could call them.
(define adventure-harrypotter-katas
  (remap-ids
   '(("avatar-(\\d*)" "wizard-\\1")
     ("weapon-(\\d*)" "spell-\\1")
     ("food-(\\d*)" "potion-\\1")
     )
   adventure-proto-katas
   )

  )

(define-sub-collections adventure-harrypotter-katas
  hello-world-katas
  wizard-katas
  potion-katas
  loot-quest-katas
  npc-katas
  (spell-katas
   (not/c (curryr name-contains? "Crafter")))
  )