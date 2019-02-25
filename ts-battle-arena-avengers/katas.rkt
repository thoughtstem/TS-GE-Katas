#lang racket

(provide katas)

(require ts-kata-util/katas/main
         "./katas/read-code-stimuli.rkt"
         "./katas/read-code-tips.rkt"
         )


;Katas start as examples in some language.
;  "Proto katas" we could call them.
(define battle-arena-proto-katas
  (remap-ids
   '(("avatar-(\\d*)" "hero-\\1")    
     ("enemy-weapon-(\\d*)" "villain-power-\\1")
     ("enemy-(\\d*)" "villain-\\1")
     ("background-(\\d*)" "planet-\\1")
     )
   (collapse-alts
    (lang->kata-collection 'battle-arena-avengers)))

  )


;The main thing these "proto katas" are missing
;  is a clear stimulus.  (The response is simply "write the code")
;Here we'll craft the stimuli, using the langauge that's appropriate
;  for this kata collection.
(define katas
  (apply fill-in-tips
         (apply fill-in-stimuli battle-arena-proto-katas stimuli)
         tips))


(define-sub-collections katas
  hello-world-katas
  hero-katas
  (villain-katas
   (not/c (curryr name-contains? "Weapon"))
   (not/c (curryr name-contains? "Power")))
  villain-power-katas
  power-katas
  planet-katas
  health-katas
  boost-katas
  shield-katas
  force-field-katas
  droid-katas
  (armor-katas
      (not/c (curryr name-contains? "Repeater"))
      (not/c (curryr name-contains? "Sword")))
  lava-pit-katas
  spike-mine-katas
  )