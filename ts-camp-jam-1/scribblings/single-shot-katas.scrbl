#lang scribble/manual

@(require "ts-camp-jam-kata-util.scrbl")
@(require ts-kata-util)

@title{Single Shot Katas}

@camp-jam-kata[#:document-level section
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

@camp-jam-kata[#:document-level section
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

@camp-jam-kata[#:document-level section
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
