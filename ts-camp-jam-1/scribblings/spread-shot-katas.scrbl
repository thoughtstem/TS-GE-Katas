#lang scribble/manual

@(require "ts-camp-jam-kata-util.scrbl")
@(require ts-kata-util)


@title{Spread Shot Katas}

@camp-jam-kata[#:document-level section
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



@camp-jam-kata[#:document-level section
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

@camp-jam-kata[#:document-level section
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