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


(collect-badges all-triads
                (define-badges k2-superhero-badges
                               (hexagon-triad play thor superhero
                                              bright-red bright-orange bright-yellow))


                (define-badges k2-farm-badges
                               (hexagon-triad pig cow horse
                                              bright-orange bright-yellow bright-green))

                (define-badges k2-sea-badges
                               (hexagon-triad fish octopus shark
                                              bright-purple bright-green bright-blue))

                (define-badges k2-zoo-badges
                               (hexagon-triad monkey giraffe elephant
                                              bright-green bright-yellow bright-purple))

                (define-badges k2-superhero2-badges  
                               (hexagon-triad superman black-widow lightning 
                                              bright-blue bright-purple bright-red))



                (define-badges survival-badges
                               (hexagon-triad carrot sword4 potion
                                              googly-orange googly-red googly-yellow))

                (define-badges battlearena-badges
                               (hexagon-triad coins mace double-swords
                                              googly-yellow googly-orange googly-green))



                (define-badges pokemon-badges
                               (hexagon-triad grass fire water
                                              googly-green googly-red googly-blue))

                (define-badges minecraft-badges
                               (hexagon-triad chest ore creeper
                                              googly-blue googly-purple googly-green))

                (define-badges starwars-badges
                               (hexagon-triad laser-sword robot space-ship 
                                              googly-blue googly-purple googly-red))
            
                (define-badges avengers-badges
                               (hexagon-triad captain-america fist iron-man
                                              googly-blue googly-yellow googly-red ))

                (define-badges fortnite-badges
                               (hexagon-triad tower helmet fireball
                                              googly-orange googly-green googly-purple))

                (define-badges adventure-badges
                               (hexagon-triad heal bow spear
                                              googly-red googly-green googly-blue))

                (define-badges lotr-badges
                               (hexagon-triad orc gandalf ring 
                                              googly-orange googly-blue googly-purple))

                (define-badges mario-badges
                               (hexagon-triad plunger mushroom happy-star 
                                              googly-purple googly-red googly-yellow))


                (define-badges harry-potter-badges
                               (hexagon-triad glasses owl wand 
                                              googly-green googly-red googly-orange)))


(define badge-grid
  (gridify-triads 
    (map (compose 
           (curryr scale 0.25))
         all-triads)))


