#lang racket

(require "./main.rkt"
         ts-kata-util/katas/main)

#|(define (battlearena->Desktop)
  (local-require ts-battle-arena-asp-2019/katas)

  (begin-identifier-job "battlearena"
                        (battlearena
                          [FILTER-BY-COLLECTION 
                            (merge-collections
                              avatar-katas 
                              enemy-katas
                              weapon-katas
                              powerup-katas
                              background-katas
                              level-design-katas
                              repeater-armor-katas
                              sword-armor-katas)])))

(define (battlearena-avengers->Desktop)
  (local-require ts-battle-arena-avengers-summer-camp-2019/katas)

  (begin-identifier-job "battlearena-avengers"
                        (battlearena-avengers
                          [FILTER-BY-COLLECTION 
                            (merge-collections
                              hero-katas 
                              planet-design-katas
                              villain-with-power-katas
                              hero-power-katas
                              powerup-katas)])))


(define (battlearena-fortnite->Desktop)
  (local-require ts-battle-arena-fortnite-summer-camp-2019/katas)

  (begin-identifier-job "battlearena-fortnite"
                        (battlearena-fortnite
                          [FILTER-BY-COLLECTION
                            (merge-collections
                              avatar-katas
                              selected-enemy-katas
                              selected-weapon-katas
                              powerup-katas
                              selected-tower-katas)])))

(define (battlearena-starwars->Desktop)
  (local-require ts-battle-arena-starwars-summer-camp-2019/katas)

  (begin-identifier-job "battlearena-starwars"
                        (battlearena-starwars
                          [FILTER-BY-COLLECTION
                            (merge-collections
                              rebel-katas 
                              imperial-katas
                              weapon-katas
                              powerup-katas
                              trap-weapon-katas)])))

(define (survival-minecraft->Desktop)
  (local-require ts-survival-minecraft-summer-camp-2019/katas)

  (begin-identifier-job "survival-minecraft"
                        (survival-minecraft
                          [FILTER-BY-COLLECTION
                            (merge-collections
                              custom-skin-katas 
                              food-katas
                              ore-katas
                              mob-katas
                              crafter-katas)])))

(define (survival-pokemon->Desktop)
  (local-require ts-survival-pokemon-summer-camp-2019/katas)

  (begin-identifier-job "survival-pokemon"
                        (survival-pokemon
                          [FILTER-BY-COLLECTION
                            (merge-collections
                              pokemon-katas
                              food-katas
                              trainer-katas)])))

(define (all->Desktop)
  (battlearena-avengers->Desktop) 
  (battlearena-fortnite->Desktop) 
  (battlearena-starwars->Desktop)
  (survival-minecraft->Desktop)
  (survival-pokemon->Desktop))
|#

#;
(all->Desktop)

#;
(battlearena->Desktop)

#;
(k2-assets->Desktop)


