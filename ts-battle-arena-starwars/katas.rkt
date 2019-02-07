#lang racket

(provide katas)

(require ts-kata-util/katas/main
         "./katas/read-code-stimuli.rkt"
         )

;Katas start as examples in some language.
;  "Proto katas" we could call them.
(define battle-arena-proto-katas
  (lang->kata-collection 'battle-arena-starwars))

;The main thing these "proto katas" are missing
;  is a clear stimulus.  (The response is simply "write the code")
;Here we'll craft the stimuli, using the langauge that's appropriate
;  for this kata collection.
(define katas
  (apply fill-in-stimuli battle-arena-proto-katas stimuli))

(define-sub-collections katas
  hero-katas
  (enemy-katas
   (not/c (curryr name-contains? "Weapon")))
  enemy-weapon-katas
  lightsaber-katas
  blaster-katas
  planet-katas
  heal-katas
  boost-katas

  ;magic-balance-katas
  ;melee-balance-katas
  ;repeater-balance-katas
  ;spear-tower-katas
  ;dagger-tower-katas
  ;repeater-tower-katas
  ;single-shot-katas
  ;spread-shot-katas
  ;homing-repeater-katas
  ;spike-mine-katas
  ;lava-katas
  ;repeater-armor-katas
  ;sword-armor-katas  
  ;rocket-tower-katas
  ;grow-katas
  ;shield-katas
  )