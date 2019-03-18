#lang racket

(provide survival-minecraft-katas
         ;survival-minecraft-proto-katas
         )

(require ts-kata-util/katas/main
         ts-fundamentals/katas
         (prefix-in new: "./katas/read-code-stimuli.rkt")
         ts-survival/katas/read-code-stimuli
         ts-survival/katas/read-code-tips)



(define survival-minecraft-proto-katas
  (apply fill-in-tips
         (apply fill-in-stimuli
                (apply fill-in-stimuli (collapse-alts
                                        (lang->kata-collection 'survival-minecraft))
                       stimuli)
                new:stimuli)
         tips))

(define survival-minecraft-katas
  (remap-ids
   '(("avatar-(\\d*)" "custom-skin-\\1")
     ("enemy-(\\d*)" "mob-\\1")
     ("coin-(\\d*)" "ore-\\1")
     ("npc-(\\d*)" "entity-\\1")
     ("bg-(\\d*)" "biome-\\1")
     )
   survival-minecraft-proto-katas))

(define-sub-collections survival-minecraft-katas
  hello-world-katas
  custom-skin-katas
  food-katas
  ore-katas
  mob-katas
  crafter-katas
  entity-katas
  sky-katas
  biome-katas
  starvation-rate-katas)
