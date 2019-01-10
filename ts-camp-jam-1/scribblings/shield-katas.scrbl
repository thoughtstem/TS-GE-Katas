#lang scribble/manual

@(require "ts-camp-jam-kata-util.scrbl")
@(require ts-kata-util)


@title{Shield Katas}

@camp-jam-kata[#:document-level section
               #:difficulty    'bronze
               #:title "Shield Potion"
               #:time-limit 5
               #:dollars 1
               #:health-bar COLOR-BAR
               #:review/introduce "meaning of #lang battle-arena, battle-arena-game, keyword."
               #:extra-dollars-for "helping teammates."]{
                                                         
 @side-note["Remember"]{You can shift the length of time of any Kata to make it the right amount of challenging!}
 @side-note["Break it Down"]{Discuss the meaning of the last keyword's code. What will happen?}
                                                         
 @(student-should-translate #:english "Make a game that has a potion that increases your shield by 50."
                            #:lang    'battle-arena
                            #:code    'shield-1)
}

@camp-jam-kata[#:document-level section
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

@camp-jam-kata[#:document-level section
               #:difficulty    'gold
               #:title "Shield Potion"
               #:time-limit 5
               #:dollars 5
               #:health-bar ADD-HEART
               #:review/introduce "definitions, rarity, respawn."]{
                                   
    
 @(student-should-translate #:english "Make a game that has both a Shield and Max Shield Potion, defined outside battle-arena-game."
                            #:lang    'battle-arena
                            #:code    'shield-3)
}