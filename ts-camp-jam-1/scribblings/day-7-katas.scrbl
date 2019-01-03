#lang scribble/manual

@(require "ts-camp-jam-kata-util.scrbl")
@(require ts-kata-util)

@;====== POTIONS AND POWER-UPS KATAS ======
@;============== DAY 7 ================
@title{Potions and Power-Ups Katas}

@include-section["avatar-katas.scrbl"]

@section{Size Katas}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'bronze
               #:title "Grow Potion"
               #:time-limit 3
               #:dollars 2
               #:health-bar COLOR-BAR
               #:review/introduce "meaning of #lang battle-arena, battle-arena-game, keyword, list, icon, on-use."
               #:extra-dollars-for "helping teammates."]{
                                                         
 @side-note["Remember"]{You can shift the length of time of any Kata to make it the right amount of challenging!}
 @side-note["Break it Down"]{Discuss the meaning of the last keyword's code. What will happen?}
  
 @(student-should-translate #:english "Make a game that has a potion that makes you big."
                            #:lang    'battle-arena
                            #:code    'grow-1)
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'silver
               #:title "Shrink Potion"
               #:time-limit 3
               #:dollars 2
               #:health-bar ADD-STAR]{

 @side-note["Break it Down"]{Discuss the meaning of the last keyword's code. What will happen?}                                     
  
 @(student-should-translate #:english "Make a game that has a potion that makes you small."
                            #:lang    'battle-arena
                            #:code    'shrink-1) 
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'gold
               #:title "Grow and Shrink"
               #:time-limit 8
               #:dollars 5
               #:health-bar ADD-HEART]{

 @side-note["TIP"]{For an extra challenge have students add multiple potions and have them complete it in less time.}
  
 @(student-should-translate #:english "Make a game that has ..."
                            #:lang    'battle-arena
                            #:code    'grow-and-shrink) 
}




@section{... Katas}


@camp-jam-kata[#:document-level subsection
               #:difficulty    'bronze
               #:title "..."
               #:time-limit 5
               #:dollars 1
               #:health-bar COLOR-BAR
               #:review/introduce "meaning of #lang battle-arena, battle-arena-game, keyword, list, icon, ..."
               #:extra-dollars-for "helping teammates."]{

 @side-note["Remember"]{You can shift the length of time of any Kata to make it the right amount of challenging!}
 @side-note["Break it Down"]{Discuss the meaning of the last keyword's code. What will happen?}
  
 @(student-should-translate #:english "Make a game that has ..."
                            #:lang    'battle-arena
                            #:code    'spread-shot-1)
}



@camp-jam-kata[#:document-level subsection
               #:difficulty    'silver
               #:title "..."
               #:time-limit 5
               #:dollars 3
               #:health-bar ADD-STAR
               #:review/introduce "..."]{

 @side-note["Break it Down"]{Discuss the meaning of the last keyword's code. What will happen?}

 @side-note["Tip"]{All the dart's keywords are optional.}
  
 @(student-should-translate #:english "Make a game that has ..."
                            #:lang    'battle-arena
                            #:code    'spread-shot-2)
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'gold
               #:title "..."
               #:time-limit 5
               #:dollars 5
               #:health-bar ADD-HEART
               #:review/introduce "..."]{

 @side-note["..."]{...}                                       

 @(student-should-translate #:english "Make a game that has ..."
                            #:lang    'battle-arena
                            #:code    'spread-shot-3)
}


@section{Boost Katas}

 

@camp-jam-kata[#:document-level subsection
               #:difficulty    'bronze
               #:title "Boost"
               #:time-limit 5
               #:dollars 1
               #:health-bar COLOR-BAR
               #:review/introduce "meaning of #lang battle-arena, battle-arena-game, keyword, list, icon."
               #:extra-dollars-for "helping teammates."]{

 @side-note["Remember"]{You can shift the length of time of any Kata to make it the right amount of challenging!}
 @side-note["Break it Down"]{Discuss the meaning of the last keyword's code. What will happen?}  
  
 @(student-should-translate #:english "Make a game that has a powerup that temporarily boosts your health."
                            #:lang    'battle-arena
                            #:code    'boost-1)
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'silver
               #:title "Boost"
               #:time-limit 3
               #:dollars 3
               #:health-bar ADD-STAR]{

 @side-note["Break it Down"]{Discuss the meaning of the last keyword's code. What will happen?}
  
 @(student-should-translate #:english "Make a game that has a powerup that temporarily boosts your speed."
                            #:lang    'battle-arena
                            #:code    'boost-2)
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'gold
               #:title "Boost"
               #:time-limit 7
               #:dollars 5
               #:health-bar ADD-HEART
               #:review/introduce "definitions, why we use them, rarity."]{                                 
    
 @(student-should-translate #:english "Make a game that has both Damage and Speed Boost Powerups, defined outside battle-arena-game."
                            #:lang    'battle-arena
                            #:code    'boost-3)
}

@section{Shield Katas}

 

@camp-jam-kata[#:document-level subsection
               #:difficulty    'bronze
               #:title "Shield Potion"
               #:time-limit 5
               #:dollars 1
               #:health-bar COLOR-BAR
               #:review/introduce "meaning of #lang battle-arena, battle-arena-game, keyword, list, icon."
               #:extra-dollars-for "helping teammates."]{
                                                         
 @side-note["Remember"]{You can shift the length of time of any Kata to make it the right amount of challenging!}
 @side-note["Break it Down"]{Discuss the meaning of the last keyword's code. What will happen?}
                                                         
 @(student-should-translate #:english "Make a game that has a potion that increases your shield by 50."
                            #:lang    'battle-arena
                            #:code    'shield-1)
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'silver
               #:title "Shield Potion"
               #:time-limit 3
               #:dollars 3
               #:health-bar ADD-STAR]{

 @side-note["Break it Down"]{Discuss the meaning of the last keyword's code. What will happen? How is it different than the basic potion?}
  
 @(student-should-translate #:english "Make a game that has a potion that recovers your shield to 100."
                            #:lang    'battle-arena
                            #:code    'shield-2)
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'gold
               #:title "Shield Potion"
               #:time-limit 7
               #:dollars 5
               #:health-bar ADD-HEART
               #:review/introduce "definitions, rarity, respawn."]{
                                   
    
 @(student-should-translate #:english "Make a game that has both a Shield and Max Shield Potion, defined outside battle-arena-game."
                            #:lang    'battle-arena
                            #:code    'shield-3)
}

@section{Example Camp Jam code (w/definitions)}

This is an example of how all the components come together during camp-jam into one piece of code:

---------------------

@; Do we want to put ALL options in here? Or simplify?

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

@; Do we want to put ALL options in here? Or simplify?

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