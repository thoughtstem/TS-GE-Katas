#lang scribble/manual

@(require "ts-camp-jam-kata-util.scrbl")
@(require ts-kata-util)

@;====== POTIONS AND POWER-UPS KATAS ======
@;============== DAY 7 ================
@title{Potions and Power-Ups Katas}

@include-section["avatar-katas.scrbl"]

@section{... Katas}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'bronze
               #:title "..."
               #:time-limit 5
               #:dollars 1
               #:health-bar COLOR-BAR
               #:review/introduce "meaning of #lang battle-arena, battle-arena-game, keyword, list, icon, ..."
               #:extra-dollars-for "helping teammates."]{

  
 @(student-should-translate #:english "Make a game that has a ..."
                            #:lang    'battle-arena
                            #:code    'single-shot-1)
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'silver
               #:title "..."
               #:time-limit 5
               #:dollars 3
               #:health-bar ADD-STAR
               #:review/introduce "..."]{
  
 @(student-should-translate #:english "Make a game that has ..."
                            #:lang    'battle-arena
                            #:code    'single-shot-2) 
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
                            #:code    'single-shot-3) 
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
               #:review/introduce "..."
]{

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


@section{... Katas}

 

@camp-jam-kata[#:document-level subsection
               #:difficulty    'bronze
               #:title "..."
               #:time-limit 5
               #:dollars 1
               #:health-bar COLOR-BAR
               #:review/introduce "meaning of #lang battle-arena, battle-arena-game, keyword, list, icon, ..."
               #:extra-dollars-for "helping teammates."]{
  
 @(student-should-translate #:english "Make a game that has ..."
                            #:lang    'battle-arena
                            #:code    'homing-repeater-1)
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'silver
               #:title "..."
               #:time-limit 5
               #:dollars 3
               #:health-bar ADD-STAR
               #:review/introduce "..."]{
  
 @(student-should-translate #:english "Make a game that has ..."
                            #:lang    'battle-arena
                            #:code    'homing-repeater-2)
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'gold
               #:title "..."
               #:time-limit 5
               #:dollars 5
               #:health-bar ADD-HEART
               #:review/introduce "..."]{

 @side-note["..."]{....}                                     
    
 @(student-should-translate #:english "Make a game that has ..."
                            #:lang    'battle-arena
                            #:code    'homing-repeater-3)
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
  
 @(student-should-translate #:english "Make a game that has ..."
                            #:lang    'battle-arena
                            #:code    'homing-repeater-1)
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'silver
               #:title "..."
               #:time-limit 5
               #:dollars 3
               #:health-bar ADD-STAR
               #:review/introduce "..."]{
  
 @(student-should-translate #:english "Make a game that has ..."
                            #:lang    'battle-arena
                            #:code    'homing-repeater-2)
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'gold
               #:title "..."
               #:time-limit 5
               #:dollars 5
               #:health-bar ADD-HEART
               #:review/introduce "..."]{

 @side-note["..."]{....}                                     
    
 @(student-should-translate #:english "Make a game that has ..."
                            #:lang    'battle-arena
                            #:code    'homing-repeater-3)
}

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

 (battle-arena-game #:avatar      (my-avatar)
                    #:enemy-list  (list (badguy))
                    )
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
                      #:amount-in-world 10)))

 ]