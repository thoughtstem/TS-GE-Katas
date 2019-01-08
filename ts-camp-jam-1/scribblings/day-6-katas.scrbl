#lang scribble/manual

@(require "ts-camp-jam-kata-util.scrbl")
@(require ts-kata-util)

@;====== RANGE BATTLE KATAS ======
@;============== DAY 6 ================
@title{Range Battle Katas}

@include-section["avatar-katas.scrbl"]

@section{Single Shot Katas}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'bronze
               #:title "Single Shot"
               #:time-limit 5
               #:dollars 1
               #:health-bar COLOR-BAR
               #:review/introduce "meaning of #lang battle-arena, battle-arena-game, keyword, list, icon, fire-mode."
               #:extra-dollars-for "helping teammates."]{

  
 @(student-should-translate #:english "Make a game that has a custom weapon that has a normal fire mode."
                            #:lang    'battle-arena
                            #:code    'single-shot-1)
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'silver
               #:title "Single Shot"
               #:time-limit 5
               #:dollars 3
               #:health-bar ADD-STAR
               #:review/introduce "meaning of dart, damage, speed, range."]{

 @side-note["Tip"]{All the dart's keywords are optional.}
  
 @(student-should-translate #:english "Make a game that has a custom weapon that has a normal fire mode and a customized dart."
                            #:lang    'battle-arena
                            #:code    'single-shot-2) 
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'gold
               #:title "Single Shot"
               #:time-limit 5
               #:dollars 5
               #:health-bar ADD-HEART
               #:review/introduce "meaning of sprite, rarity."]{

 @side-note["Food Sprites"]{fish-sprite, apples-sprite, cherry-sprite, steak-sprite, carrot-sprite, 
                            carrot-stew-sprite, smores-sprite, toasted-marshmallow-sprite.}
  
 @(student-should-translate #:english "Make a game that has a custom weapon that has a normal fire mode and a customized dart with a food sprite."
                            #:lang    'battle-arena
                            #:code    'single-shot-3) 
}




@section{Spread Shot Katas}


@camp-jam-kata[#:document-level subsection
               #:difficulty    'bronze
               #:title "Spread Shot"
               #:time-limit 5
               #:dollars 1
               #:health-bar COLOR-BAR
               #:review/introduce "meaning of #lang battle-arena, battle-arena-game, keyword, list, icon, fire-mode."
               #:extra-dollars-for "helping teammates."]{
  
 @(student-should-translate #:english "Make a game that has a weapon that has a spread fire mode."
                            #:lang    'battle-arena
                            #:code    'spread-shot-1)
}



@camp-jam-kata[#:document-level subsection
               #:difficulty    'silver
               #:title "Spread Shot"
               #:time-limit 5
               #:dollars 3
               #:health-bar ADD-STAR
               #:review/introduce "meaning of damage, durability, speed, dart."
]{

 @side-note["Tip"]{All the dart's keywords are optional.}
  
 @(student-should-translate #:english "Make a game that has a weapon that has a spread fire mode and a customized dart."
                            #:lang    'battle-arena
                            #:code    'spread-shot-2)
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'gold
               #:title "Spread Shot"
               #:time-limit 5
               #:dollars 5
               #:health-bar ADD-HEART
               #:review/introduce "meaning of sprite, rarity."]{

 @side-note["Object Sprites"]{chest-sprite, slime-sprite, coin-sprite, bowl-sprite, wood-table-sprite.}                                       

 @(student-should-translate #:english "Make a game that has a weapon that has a spread fire mode and a customized dart with an object sprite."
                            #:lang    'battle-arena
                            #:code    'spread-shot-3)
}


@section{Homing Repeater Katas}

 

@camp-jam-kata[#:document-level subsection
               #:difficulty    'bronze
               #:title "Homing Repeater"
               #:time-limit 5
               #:dollars 1
               #:health-bar COLOR-BAR
               #:review/introduce "meaning of #lang battle-arena, battle-arena-game, keyword, list, icon, fire-mode."
               #:extra-dollars-for "helping teammates."]{
  
 @(student-should-translate #:english "Make a game that has a weapon that has a hoaming fire mode."
                            #:lang    'battle-arena
                            #:code    'homing-repeater-1)
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'silver
               #:title "Homing Repeater"
               #:time-limit 5
               #:dollars 3
               #:health-bar ADD-STAR
               #:review/introduce "meaning of damage, speed, range, dart."]{

 @side-note["Tip"]{All the dart's keywords are optional.}
  
 @(student-should-translate #:english "Make a game that has a weapon that has a hoaming fire mode and a customized dart."
                            #:lang    'battle-arena
                            #:code    'homing-repeater-2)
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'gold
               #:title "Homing Repeater"
               #:time-limit 5
               #:dollars 5
               #:health-bar ADD-HEART
               #:review/introduce "meaning of sprite, rarity."]{

 @side-note["Animal Sprites"]{cat-sprite, white-cat-sprite, black-cat-sprite, bat-sprite, snake-sprite.}                                     
    
 @(student-should-translate #:english "Make a game that has a weapon that has a hoaming fire mode and a customized dart with an animal sprite."
                            #:lang    'battle-arena
                            #:code    'homing-repeater-3)
}


@include-section["enemy-katas.scrbl"]


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