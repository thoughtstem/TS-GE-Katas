#lang racket

(require scribble/srcdoc pict)
(require (for-doc (only-in pict pict?)
                  (submod "..")))


(provide 
  ;Note that all define-badge defs are provided. You just can't see them because of macro magic.
  badge-grid
  (all-from-out "./styles/hexagon.rkt"
                "./icons/main.rkt"
                "./colors/pallets.rkt"
                "./util.rkt"))
(require "./icons/main.rkt")
(require "./colors/pallets.rkt")
(require "./styles/hexagon.rkt")
(require "./util.rkt")

;NOTE: If you make more of these, they will be automatically documented in ts-kata-util/scribblings/badge-maker.scrbl

(collect-badges all-triads
                (define-badges k2-superhero-badges
                               (hexagon-triad play thor superhero
                                              bright-red bright-orange bright-yellow))


                (define-badges k2-farm-badges
                               (hexagon-triad chicken cow horse
                                              bright-orange bright-yellow bright-green))

                (define-badges k2-sea-badges
                               (hexagon-triad fish1 fish2 octopus
                                              bright-yellow bright-green bright-blue))

                (define-badges k2-zoo-badges
                               (hexagon-triad giraffe elephant tiger
                                              bright-green bright-blue bright-purple))

                (define-badges k2-superhero2-badges
                               (hexagon-triad superman black-widow lightning 
                                              bright-blue bright-purple bright-red))



                (define-badges survival-badges
                               (hexagon-triad potion sword carrot
                                              googly-red googly-orange googly-yellow))

                (define-badges battle-arena-badges
                               (hexagon-triad double-swords mace coins
                                              googly-orange googly-yellow googly-green))



                (define-badges pokemon-badges
                               (hexagon-triad pokeball pika monster-ball
                                              googly-yellow googly-green googly-blue ))

                (define-badges minecraft-badges
                               (hexagon-triad slime zombie sword3
                                              googly-green googly-blue googly-purple))

                (define-badges starwars-badges
                               (hexagon-triad laser-sword robot space-ship 
                                              googly-blue googly-purple googly-red))

                (define-badges avengers-badges
                               (hexagon-triad superman black-widow lightning 
                                              googly-red googly-yellow googly-blue))

                (define-badges fortnite-badges
                               (hexagon-triad tower bullet armor
                                              googly-orange googly-green googly-purple))

                (define-badges adventure-badges
                               (hexagon-triad heal bow spear
                                              googly-red googly-green googly-blue))

                (define-badges lotr-badges
                               (hexagon-triad hairy-foot orc wizard2 
                                              googly-orange googly-blue googly-purple))

                (define-badges mario-badges
                               (hexagon-triad mushroom happy-star plunger
                                              googly-yellow googly-purple googly-red))


                (define-badges harry-potter-badges
                               (hexagon-triad glasses owl wand 
                                              googly-green googly-red googly-orange)))


(define badge-grid
  (gridify-triads 
    (map (compose 
           (curryr scale 0.25))
         all-triads)))


