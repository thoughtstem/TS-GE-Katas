33
((3) 0 () 0 () () (h ! (equal)))
procedure
(custom-avatar [appearance]) -> entity?
  appearance : (or/c image? animated-sprite?) = #f
procedure
(custom-coin ...)
 -> (racket (custom-coin #:entity           (coin-entity)
                         #:sprite           (star 20 'solid 'red)
                         #:position         (posn 100 100)
                         #:name             "ruby coin"
                         #:tile             2
                         #:amount-in-world  10
                         #:value            10
                         #:respawn?         #t
                         #:components       #f))
procedure
(custom-food ...)
 -> (racket (custom-food #:entity          (carrot-entity)
                         #:sprite          (circle 20 'solid 'brown)
                         #:position        (posn 100 100)
                         #:name            "carrot"
                         #:tile            4
                         #:amount-in-world 5
                         #:heals-by        10
                         #:respawn?        #t
                         #:components      #f))
procedure
(custom-npc ...)
 -> (racket (custom-npc #:sprite     (sheet->sprite (random-character-row) #:column 4)
                        #:position   (posn 0 0)
                        #:name       "Andy"
                        #:tile       0
                        #:dialog     #f
                        #:mode       'wander
                        #:game-width 480
                        #:speed      2
                        #:target     "player"
                        #:sound      #t
                        #:scale      1
                        #:components #f))
procedure
(custom-crafter ...)
 -> (racket (custom-crafter #:position   (posn 100 100)
                            #:tile       7
                            #:name       "cauldron"
                            #:sprite     cauldron-sprite
                            #:menu       default-crafting-menu
                            #:components #f))
procedure
(custom-background ...)
 -> (racket (custom-background #:bg-img     FOREST-BG
                               #:rows       3
                               #:columns    3
                               #:start-tile 0
                               #:components #f))
