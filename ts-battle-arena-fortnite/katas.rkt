#lang racket

(provide battlearena-fortnite-katas)

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
(define battlearena-fortnite-katas
  (apply fill-in-tips
         (apply fill-in-tips
                (apply fill-in-stimuli
                       (apply fill-in-stimuli (collapse-alts
                                               (merge-collections
                                                (lang->kata-collection 'battlearena-fortnite)
                                                code-values-all))
                              stimuli)
                       new:stimuli)
                tips)
         new:tips))


(define-sub-collections battlearena-fortnite-katas
  code-of-awesomeness-katas
  hello-world-katas
  avatar-katas
  (enemy-katas
   (not/c (curryr name-contains? "Weapon")))
  enemy-weapon-katas
  background-katas
  level-design-katas
  health-katas
  boost-katas
  size-katas
  shield-katas
  force-field-katas
  armor-katas
  lava-pit-katas
  spike-mine-katas
  spear-tower-katas
  dagger-tower-katas
  repeater-tower-katas
  rocket-tower-katas
  
  sword-katas
  spear-katas
  fire-magic-katas
  single-shot-katas
  spread-shot-katas
  homing-repeater-katas)

(define-kata-collection selected-weapon-katas
  ;(first (kata-collection-katas sword-katas))
  (second (kata-collection-katas spear-katas))
  (third (kata-collection-katas fire-magic-katas))
  ;(fourth (kata-collection-katas fire-magic-katas))
  (second (kata-collection-katas single-shot-katas))
  (second (kata-collection-katas spread-shot-katas))
  (second (kata-collection-katas homing-repeater-katas)))

