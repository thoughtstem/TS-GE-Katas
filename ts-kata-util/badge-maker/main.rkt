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
                               (hexagon-triad play-icon thor-icon superhero-icon
                                              bright-red bright-orange bright-yellow))


                (define-badges k2-farm-badges
                               (hexagon-triad pig-icon cow-icon horse-icon
                                              bright-orange bright-yellow bright-green))

                (define-badges k2-sea-badges
                               (hexagon-triad fish-icon octopus-icon shark-icon
                                              bright-purple bright-green bright-blue))

                (define-badges k2-zoo-badges
                               (hexagon-triad monkey-icon giraffe-icon elephant-icon
                                              bright-green bright-yellow bright-purple))

                (define-badges k2-superhero2-badges  
                               (hexagon-triad superman-icon black-widow-icon lightning-icon 
                                              bright-blue bright-purple bright-red))



                (define-badges survival-badges
                               (hexagon-triad carrot-icon sword4-icon potion-icon
                                              googly-orange googly-red googly-yellow))

                (define-badges battlearena-badges
                               (hexagon-triad coins-icon mace-icon double-swords-icon
                                              googly-yellow googly-orange googly-green))



                (define-badges pokemon-badges
                               (hexagon-triad grass-icon fire-icon water-icon
                                              googly-green googly-red googly-blue))

                (define-badges minecraft-badges
                               (hexagon-triad chest-icon ore-icon creeper-icon
                                              googly-blue googly-purple googly-green))

                (define-badges starwars-badges
                               (hexagon-triad laser-sword-icon robot-icon space-ship-icon 
                                              googly-blue googly-purple googly-red))
            
                (define-badges avengers-badges
                               (hexagon-triad captain-america-icon fist-icon iron-man-icon
                                              googly-blue googly-yellow googly-red ))

                (define-badges fortnite-badges
                               (hexagon-triad tower-icon helmet-icon fireball-icon
                                              googly-orange googly-green googly-purple))

                (define-badges adventure-badges
                               (hexagon-triad heal-icon bow-icon spear-icon
                                              googly-red googly-green googly-blue))

                (define-badges lotr-badges
                               (hexagon-triad orc-icon gandalf-icon ring-icon 
                                              googly-orange googly-blue googly-purple))

                (define-badges mario-badges
                               (hexagon-triad plunger-icon mushroom-icon happy-star-icon 
                                              googly-purple googly-red googly-yellow))


                (define-badges harry-potter-badges
                               (hexagon-triad glasses-icon owl-icon wand-icon 
                                              googly-green googly-red googly-orange)))


(define badge-grid
  (gridify-triads 
    (map (compose 
           (curryr scale 0.25))
         all-triads)))


