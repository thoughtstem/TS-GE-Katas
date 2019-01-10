#lang scribble/manual

@(require "ts-camp-jam-kata-util.scrbl")
@(require ts-kata-util)


@title{Potions Example Game Jam} 

@section{Example Camp Jam code (w/definitions)}

This is an example of how all the components come together during camp-jam into one piece of code:

---------------------


@side-note["Note:"]{This is just an example of some potions and power-ups. Students could have up to 8 or more!}

@codeblock{#lang battle-arena}
@racketblock[
 (define (my-avatar)
   (custom-avatar #:sprite (random-character-sprite)))

 (define (damage-boost)
    (custom-item #:name   "Damage Boost"
                 #:sprite (make-icon "DB" 'orangered)
                 #:on-use (change-damage-by 1000 #:for 200)
                 #:rarity 'epic))

  (define (speed-boost)
    (custom-item #:name   "Speed Boost"
                 #:sprite (make-icon "SB" 'yellow)
                 #:on-use (multiply-speed-by 2 #:for 200)
                 #:rarity 'uncommon))

 (define (shield-potion)
   (custom-item #:name     "Shield Potion" 
                #:sprite   (make-icon "SP" 'blue 'white)
                #:on-use   (change-shield-by 50)
                #:rarity   'uncommon
                #:respawn? #t))

 (define (max-shield)
   (custom-item #:name     "Max Shield Potion"
                #:sprite   (make-icon "MSP" 'blue 'white)
                #:on-use   (set-shield-to 100)
                #:rarity   'epic))

 (battle-arena-game
  #:avatar      (my-avatar)
  #:item-list   (list (damage-boost)
                      (speed-boost)
                      (shield-potion)
                      (max-shield))
  )
 ]

@section{Example Camp Jam code (w/in-line)}

This is an example of how all the components come together during camp-jam into one piece of code:


@side-note["Note:"]{This is just an example of some potions and power-ups. Students could have up to 8 or more!}

@codeblock{#lang battle-arena}
@racketblock[
 (battle-arena-game
  #:avatar     (custom-avatar
                #:sprite (random-character-sprite))
  #:item-list  (list (custom-item #:name   "Damage Boost"
                                  #:sprite (make-icon "DB" 'orangered)
                                  #:on-use (change-damage-by 1000 #:for 200))
                     (custom-item #:name   "Speed Boost"
                                  #:sprite (make-icon "SB" 'yellow)
                                  #:on-use (multiply-speed-by 2 #:for 200))
                     (custom-item #:name     "Shield Potion" 
                                  #:sprite   (make-icon "SP" 'blue 'white)
                                  #:on-use   (change-shield-by 50))
                     (custom-item #:name     "Max Shield Potion"
                                  #:sprite   (make-icon "MSP" 'blue 'white)
                                  #:on-use   (set-shield-to 100))))

 ]