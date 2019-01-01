#lang scribble/manual

@(require "ts-camp-jam-kata-util.scrbl")
@(require ts-kata-util)

@;====== OFFENSIVE BASE KATAS ======
@;============== DAY 5 ================
@title{Offensive Base Katas}

@include-section["avatar-katas.scrbl"]

@section{Rocket Tower}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'bronze
               #:title "Rocket Tower"
               #:time-limit 5
               #:dollars 1
               #:health-bar COLOR-BAR
               #:review/introduce "meaning of #lang battle-arena, battle-arena-game, keyword, list, icon, dart."
               #:extra-dollars-for "helping teammates."]{

  
@(student-should-translate #:english "Make a game that has a custom weapon that deploys Rocket Tower."
                            #:lang    'battle-arena
                            #:code    'rocket-tower-1)
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'silver
               #:title "Rocket Tower"
               #:time-limit 5
               #:dollars 3
               #:health-bar ADD-STAR
               #:review/introduce "..."
               #:extra-dollars-for "helping teammates."]{


 @;@(student-should-translate #:english "Make a game that has a custom weapon that deploys a lava pit with custom damage and size."
                            @;#:lang    'battle-arena
                            @;#:code 'lava-2)
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'gold
               #:title "Rocket Tower"
               #:time-limit 5
               #:dollars 5
               #:health-bar ADD-HEART
               #:review/introduce "..."
               #:extra-dollars-for "helping teammates, creativity."]{
  
 @;@(student-should-translate #:english "Make a game that has a custom weapon that deploys a lava pit with custom damage, size, sprite, and range."
                            @;#:lang    'battle-arena
                            @;#:code 'lava-3)
}




@section{Repeater Tower Katas}


@camp-jam-kata[#:document-level subsection
               #:difficulty    'bronze
               #:title "Repeater Tower"
               #:time-limit 5
               #:dollars 1
               #:health-bar COLOR-BAR
               #:review/introduce "meaning of #lang battle-arena, battle-arena-game, keyword, icon, dart, list."
               #:extra-dollars-for "helping teammates."]{
  
 @(student-should-translate #:english "Make a game that has a weapon that deploys a Repeater Tower."
                            #:lang    'battle-arena
                            #:code    'repeater-tower-1)
}



@camp-jam-kata[#:document-level subsection
               #:difficulty    'silver
               #:title "Repeater Tower"
               #:time-limit 5
               #:dollars 3
               #:health-bar ADD-STAR
               #:review/introduce "..."
               #:extra-dollars-for "helping teammates."]{
  
 @;@(student-should-translate #:english "Make a game that has a weapon that deploys a spike mine with a large range and speed"
                            @;#:lang    'battle-arena
                            @;#:code 'spike-mine-2)
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'gold
               #:title "Repeater Tower"
               #:time-limit 5
               #:dollars 5
               #:health-bar ADD-HEART
               #:review/introduce "..."
               #:extra-dollars-for "helping teammates, creativity"]{

 @;@(student-should-translate #:english "Make a game that has a weapon that deploys a spike mine with a large range and speed, high damage, and non-default sprite"
                            @;#:lang    'battle-arena
                            @;#:code 'spike-mine-3)
}


@section{Dagger Tower Katas}

 

@camp-jam-kata[#:document-level subsection
               #:difficulty    'bronze
               #:title "Dagger Tower"
               #:time-limit 5
               #:dollars 1
               #:health-bar COLOR-BAR
               #:review/introduce "meaning of #lang battle-arena, battle-arena-game, keyword, list, icon, dart."
               #:extra-dollars-for "helping teammates."]{
  
 @(student-should-translate #:english "Make a game that has a custom weapon that deploys a dagger tower."
                            #:lang    'battle-arena
                            #:code    'dagger-tower-1)
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'silver
               #:title "Dagger Tower"
               #:time-limit 5
               #:dollars 3
               #:health-bar ADD-STAR
               #:review/introduce "..."
               #:extra-dollars-for "helping teammates."]{
  
 @;@(student-should-translate #:english "Make a game that has a custom weapon that deploys a spear tower with a speed of 10 and a range of 20."
                            @;#:lang    'battle-arena
                            @;#:code 'spear-tower-2)
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'gold
               #:title "Dagger Tower"
               #:time-limit 5
               #:dollars 5
               #:health-bar ADD-HEART
               #:review/introduce "..."
               #:extra-dollars-for "helping teammates."]{
    
 @;@(student-should-translate #:english "Make a game that has a custom weapon that deploys a spear tower with a custom spear image, damage level, range and speed"
                            @;#:lang    'battle-arena
                            @;#:code 'spear-tower-3)
}



@include-section["enemy-katas.scrbl"]


