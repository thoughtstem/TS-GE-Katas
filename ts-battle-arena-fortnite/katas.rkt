#lang racket

(provide katas)

(require ts-kata-util/katas/main
         ts-battle-arena/katas/read-code-stimuli
         (prefix-in new: "./katas/read-code-stimuli.rkt")
         "./katas/read-code-tips.rkt"
         )

;The main thing these "proto katas" are missing
;  is a clear stimulus.  (The response is simply "write the code")
;Here we'll craft the stimuli, using the langauge that's appropriate
(define battle-arena-proto-katas
  (apply fill-in-tips
         (apply fill-in-stimuli
                (apply fill-in-stimuli (collapse-alts
                                        (lang->kata-collection 'battlearena-fortnite))
                       stimuli)
                new:stimuli)
         tips))

;Katas start as examples in some language.
;  "Proto katas" we could call them.
(define katas
  (remap-ids
   '(("avatar-(\\d*)" "hero-\\1")    
     )
   battle-arena-proto-katas
   )

  )

(define-sub-collections katas
  hello-world-katas
  hero-katas
  (enemy-katas
   (not/c (curryr name-contains? "Weapon")))
  enemy-weapon-katas
  (weapon-katas ;TODO Add katas to weapons
   (not/c (curryr name-contains? "Enemy")))
  background-katas
  health-katas
  boost-katas
  shield-katas
  force-field-katas
  lava-pit-katas
  spike-mine-katas
  )