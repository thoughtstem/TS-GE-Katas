#lang racket

(provide battlearena-starwars-katas)

(require ts-kata-util/katas/main
         ts-battle-arena/katas/read-code-stimuli
         ts-battle-arena/katas/read-code-tips
         (prefix-in new: "./katas/read-code-stimuli.rkt")
         (prefix-in new: "./katas/read-code-tips.rkt")
         )


;The main thing these "proto katas" are missing
;  is a clear stimulus.  (The response is simply "write the code")
;Here we'll craft the stimuli, using the langauge that's appropriate
;  for this kata collection.
(define battle-arena-proto-katas
  (apply fill-in-tips
         (apply fill-in-tips
                (apply fill-in-stimuli
                       (apply fill-in-stimuli (collapse-alts
                                               (lang->kata-collection 'battlearena-starwars))
                              stimuli)
                       new:stimuli)
                tips)
         new:tips))

;Katas start as examples in some language.
;  "Proto katas" we could call them.
(define battlearena-starwars-katas
  (remap-ids
   '(("avatar-(\\d*)" "rebel-\\1")
     ("enemy-(\\d*)" "imperial-\\1")
     ("enemy-weapon-(\\d*)" "imperial-weapon-\\1")
     ("sword-armor-(\\d*)" "lightsaber-armor-\\1")
     ("background-(\\d*)" "planet-\\1")
     )
   battle-arena-proto-katas
   )

  )


(define-sub-collections battlearena-starwars-katas
  hello-world-katas
  rebel-katas
  (imperial-katas
   (not/c (curryr name-contains? "Weapon")))
  imperial-weapon-katas
  (lightsaber-katas
   (not/c (curryr name-contains? "Droid"))
   (not/c (curryr name-contains? "Armor")))
  (blaster-katas
   (not/c (curryr name-contains? "Droid"))
   (not/c (curryr name-contains? "Armor")))
  planet-katas
  level-design-katas
  health-katas
  boost-katas
  shield-katas
  force-field-katas
  lightsaber-droid-katas
  blaster-droid-katas
  lightsaber-armor-katas  
  blaster-armor-katas  
  lava-pit-katas 
  spike-mine-katas
  )


