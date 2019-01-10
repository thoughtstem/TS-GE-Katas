#lang scribble/manual

@(require "ts-camp-jam-kata-util.scrbl")
@(require ts-kata-util)

@title{Spike Mine Katas}


@camp-jam-kata[#:document-level section
               #:difficulty    'bronze
               #:title "Spike Mine"
               #:time-limit 5
               #:dollars 1
               #:health-bar COLOR-BAR
               #:review/introduce "meaning of #lang battle-arena, battle-arena-game, keyword, list."
               #:extra-dollars-for "helping teammates."]{
  
 @(student-should-translate #:english "Make a game that has a weapon that deploys a default spike mine"
                            #:lang    'battle-arena
                            #:code 'spike-mine-1)
}

@camp-jam-kata[#:document-level section
               #:difficulty    'silver
               #:title "Spike Mine"
               #:time-limit 5
               #:dollars 3
               #:health-bar ADD-STAR
               #:review/introduce "meaning of multiple keywords, range."
               #:extra-dollars-for "helping teammates."]{
  
 @(student-should-translate #:english "Make a game that has a weapon that deploys a spike mine with a large range and speed"
                            #:lang    'battle-arena
                            #:code 'spike-mine-2)
}

@camp-jam-kata[#:document-level section
               #:difficulty    'gold
               #:title "Spike Mine"
               #:time-limit 5
               #:dollars 5
               #:health-bar ADD-HEART
               #:review/introduce "meaning of damage."
               #:extra-dollars-for "helping teammates, creativity"]{

 @(student-should-translate #:english "Make a game that has a weapon that deploys a spike mine with a large range and speed, high damage, and non-default sprite"
                            #:lang    'battle-arena
                            #:code 'spike-mine-3)
}
