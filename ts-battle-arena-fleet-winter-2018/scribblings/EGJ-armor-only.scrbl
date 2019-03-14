#lang scribble/manual

@(require ts-kata-util)

@title{Armor Example Game Jam Code}

@section{Example Camp Jam code (w/definitions)}

This is an example of how all the components come together during camp-jam into one piece of code:

---------------------

@codeblock{#lang battlearena}
@racketblock[
 (define (my-avatar)
   (custom-avatar #:sprite (random-character-sprite)))

 (define (badguy-weapon)
   (custom-weapon #:name        "Sword"
                  #:dart        (sword #:damage 40)))
  
 (define (badguy)
   (custom-enemy #:ai              'easy
                 #:health          200
                 #:shield          100
                 #:amount-in-world 10
                 #:weapon          (badguy-weapon)))

 (define (my-armor)
   (custom-armor #:name          "Sword Armor"
                 #:sprite        (make-icon "SA")
                 #:protects-from "Sword"
                 #:change-damage (subtract-by 30)
                 #:rarity        'rare))

 (battlearena-game #:avatar     (my-avatar)
                    #:enemy-list (list (badguy))
                    #:item-list  (list (my-armor)))
 ]

@section{Example Camp Jam code (w/in-line)}

This is an example of how all the components come together during camp-jam into one piece of code:

@codeblock{#lang battlearena}
@racketblock[
 (battlearena-game
  #:avatar     (custom-avatar
                #:sprite (random-character-sprite))
  #:enemy-list (list (custom-enemy
                      #:ai              'easy
                      #:health          200
                      #:shield          100
                      #:amount-in-world 10
                      #:weapon          (custom-weapon
                                         #:name        "Sword"
                                         #:dart        (sword #:damage 50))))
  #:item-list (list (custom-armor
                     #:name          "Sword Armor"
                     #:sprite        (make-icon "SA")
                     #:protects-from "Sword"
                     #:change-damage (subtract-by 30)
                     #:rarity        'rare)))

 ]
