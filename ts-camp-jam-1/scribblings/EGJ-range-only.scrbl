#lang scribble/manual

@(require "ts-camp-jam-kata-util.scrbl")
@(require ts-kata-util)

@title{Range Example Game Jam}

@section{Example Camp Jam code (w/definitions)}

This is an example of how all the components come together during camp-jam into one piece of code:

---------------------

@codeblock{#lang battle-arena}
@racketblock[
 (define (my-avatar)
   (custom-avatar #:sprite (random-character-sprite)))
  
 (define (badguy)
   (custom-enemy #:ai              'easy
                 #:health          200
                 #:shield          100
                 #:amount-in-world 10
                 #:weapon          (badguy-weapon)))

 (define (single-shot)
   (custom-weapon #:name "Single Shot"
                  #:sprite (make-icon "SS")
                  #:rapid-fire? #f         ;click as fast as you can to shoot
                  #:dart (custom-dart
                          #:sprite (rectangle 10 2 'solid 'cyan)
                          #:damage 10
                          #:speed 10
                          #:range 50)))

 (define (spread-shot)
   (custom-weapon #:name "Spread Shot"
                  #:sprite (make-icon "SPR")
                  #:fire-mode 'spread      ;options 'normal, 'random, 'homing, 'spread
                  #:fire-rate 2))

 (define (hoaming-repeater)
   (custom-weapon  #:name "Homing Repeater"
                   #:sprite (make-icon "HR")
                   #:fire-mode 'homing
                   #:fire-rate 5))

 (battle-arena-game #:avatar      (my-avatar)
                    #:enemy-list  (list (badguy))
                    #:weapon-list (list (single-shot)
                                        (spread-shot)
                                        (hoaming-repeater)))
 ]

@section{Example Camp Jam code (w/in-line)}

This is an example of how all the components come together during camp-jam into one piece of code:

@codeblock{#lang battle-arena}
@racketblock[
 (battle-arena-game
  #:avatar     (custom-avatar
                #:sprite (random-character-sprite))
  #:enemy-list (list (custom-enemy
                      #:ai              'easy
                      #:health          200
                      #:shield          100
                      #:amount-in-world 10))
  #:weapon-list    (list (custom-weapon #:name "Single Shot"
                                        #:sprite (make-icon "SS")
                                        #:rapid-fire? #f         ;click as fast as you can to shoot
                                        #:dart (custom-dart
                                                #:sprite (rectangle 10 2 'solid 'cyan)
                                                #:damage 10
                                                #:speed 10
                                                #:range 50)
                                        #:rarity 'common)
                         (custom-weapon #:name "Spread Shot"
                                        #:sprite (make-icon "SPR")
                                        #:fire-mode 'spread      ;options 'normal, 'random, 'homing, 'spread
                                        #:fire-rate 2
                                        #:dart (custom-dart
                                                #:sprite (rectangle 10 2 'solid 'orange)
                                                #:damage 20
                                                #:durability 20   ;will die after hitting second enemy
                                                #:speed 15
                                                #:range 15)
                                        #:rarity 'rare)
                         (custom-weapon #:name "Homing Repeater"
                                        #:sprite (make-icon "HR")
                                        #:fire-mode 'homing
                                        #:fire-rate 5
                                        #:dart (custom-dart
                                                #:sprite (rectangle 10 2 'solid 'pink)
                                                #:damage 15
                                                #:speed 8
                                                #:range 40)
                                        #:rarity 'epic)
                         ))

 ]