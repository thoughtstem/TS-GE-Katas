#lang racket

(provide battlearena-fortnite-katas)

(require ts-kata-util/katas/main
         ts-battle-arena/katas
         ts-battle-arena/katas/read-code-stimuli
         ts-battle-arena/katas/read-code-tips
         (prefix-in new: "./katas/read-code-stimuli.rkt")
         (prefix-in new: "./katas/read-code-tips.rkt")
         )

;The main thing these "proto katas" are missing
;  is a clear stimulus.  (The response is simply "write the code")
;Here we'll craft the stimuli, using the langauge that's appropriate
(define battle-arena-proto-katas
  (apply fill-in-tips
         (apply fill-in-tips
                (apply fill-in-stimuli
                       (apply fill-in-stimuli (collapse-alts
                                               (lang->kata-collection 'battlearena-fortnite))
                              stimuli)
                       new:stimuli)
                tips)
         new:tips))

;Katas start as examples in some language.
;  "Proto katas" we could call them.
(define battlearena-fortnite-katas
  (remap-ids
   '(("avatar-(\\d*)" "hero-\\1")    
     )
   battle-arena-proto-katas
   )

  )

(define-kata-collection selected-weapon-katas
  (first (kata-collection-katas sword-katas))
  (second (kata-collection-katas spear-katas))
  (third (kata-collection-katas fire-magic-katas))
  (fourth (kata-collection-katas fire-magic-katas))
  (second (kata-collection-katas single-shot-katas))
  (second (kata-collection-katas spread-shot-katas))
  (second (kata-collection-katas homing-repeater-katas)))

(define-sub-collections battlearena-fortnite-katas
  hello-world-katas
  hero-katas
  (enemy-katas
   (not/c (curryr name-contains? "Weapon")))
  enemy-weapon-katas
  background-katas
  level-design-katas
  health-katas
  boost-katas
  shield-katas
  force-field-katas
  armor-katas
  lava-pit-katas
  spike-mine-katas
  )