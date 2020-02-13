#lang racket

(provide battlearena-avengers-katas)

(require ts-kata-util/katas/main
         ts-battle-arena/katas/read-code-stimuli
         ts-battle-arena/katas/read-code-tips
         ts-fundamentals/katas
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
                                               (merge-collections
                                                (lang->kata-collection 'battlearena-avengers)
                                                code-values-all))
                              stimuli)
                       new:stimuli)
                tips)
         new:tips))


;Katas start as examples in some language.
;  "Proto katas" we could call them.
(define battlearena-avengers-katas
  (remap-ids
   '(("avatar-(\\d*)" "hero-\\1")    
     ("enemy-weapon-(\\d*)" "villain-power-\\1")
     ("enemy-(\\d*)" "villain-\\1")
     ("background-(\\d*)" "planet-\\1")
     )
   battle-arena-proto-katas
   )

  )

(define-sub-collections battlearena-avengers-katas
  code-of-awesomeness-katas
  hello-world-katas
  hero-katas
  (villain-katas
   (not/c (curryr name-contains? "Weapon"))
   (not/c (curryr name-contains? "Power")))
  villain-power-katas
  (power-katas
   (not/c (curryr name-contains? "Villain")))
  planet-katas
  level-design-katas
  health-katas
  boost-katas
  shield-katas
  size-katas
  force-field-katas
  drone-katas
  (armor-katas
      (not/c (curryr name-contains? "Repeater"))
      (not/c (curryr name-contains? "Sword")))
  lava-pit-katas
  spike-mine-katas
  )
