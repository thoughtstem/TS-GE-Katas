#lang scribble/manual

@(require "ts-camp-jam-kata-util.scrbl")
@(require ts-kata-util)


@title{Homing Repeater Katas}

@camp-jam-kata[#:document-level section
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

@camp-jam-kata[#:document-level section
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

@camp-jam-kata[#:document-level section
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