#lang racket

(provide battle-arena-katas
         battle-arena-proto-katas)

(require ts-kata-util/katas/main
         "./katas/read-code-stimuli.rkt"
         "./katas/read-code-tips.rkt")

;Katas start as examples in some langauge.
;  "Proto katas" we could call them.
(define battle-arena-proto-katas
  (lang->kata-collection 'battle-arena))

;The main thing these "proto katas" are missing
;  is a clear stimulus.  (The response is simply "write the code")
;Here we'll craft the stimuli, using the langauge that's appropriate
;  for this kata collection.
(define battle-arena-katas
  (apply fill-in-tips
         (apply fill-in-stimuli battle-arena-proto-katas stimuli)
         tips))

;Now we just slice up the kata collection in a bunch of ways
;  Gives us a variety of ways to present the information later
(define-sub-collections battle-arena-katas
  hello-world-katas
  background-katas
  avatar-katas
  paint-thrower-katas
  fire-magic-katas
  ice-magic-katas
  magic-balance-katas
  melee-balance-katas
  repeater-balance-katas
  spear-tower-katas
  dagger-tower-katas
  repeater-tower-katas
  single-shot-katas
  spread-shot-katas
  homing-repeater-katas
  spike-mine-katas
  lava-pit-katas
  repeater-armor-katas
  sword-armor-katas
  enemy-weapon-katas
  rocket-tower-katas
  size-katas
  shield-katas
  boost-katas
  health-katas
  force-field-katas
  ;A few special ones require us to filter out certain other katas.
  (enemy-katas
   (not/c (curryr name-contains? "Weapon")))
  (sword-katas
   (not/c (curryr name-contains? "Tower"))
   (not/c (curryr name-contains? "Armor")))
  (spear-katas
   (not/c (curryr name-contains? "Tower"))))


