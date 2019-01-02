#lang scribble/manual

@(require "ts-camp-jam-kata-util.scrbl")
@(require ts-kata-util)

@;====== OFFENSIVE BASE KATAS ======
@;============== DAY 5 ================
@title{Offensive Base Katas}


@section{Rocket Tower Katas}

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
               #:health-bar ADD-STAR]{


 @(student-should-translate #:english "Make a game that has a custom weapon that deploys a slow shooting, homing Rocket Tower."
                            #:lang    'battle-arena
                            #:code    'rocket-tower-2) 
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'gold
               #:title "Rocket Tower"
               #:time-limit 5
               #:dollars 5
               #:health-bar ADD-HEART]{
  
 @(student-should-translate #:english "Make a game that has a custom weapon that deploys a slow shooting, homing Rocket Tower that shoots a custom rocket."
                            #:lang    'battle-arena
                            #:code    'rocket-tower-3) 
}




@section{Repeater Tower Katas}


@camp-jam-kata[#:document-level subsection
               #:difficulty    'bronze
               #:title "Repeater Tower"
               #:time-limit 5
               #:dollars 1
               #:health-bar COLOR-BAR]{
  
 @(student-should-translate #:english "Make a game that has a weapon that deploys a Repeater Tower."
                            #:lang    'battle-arena
                            #:code    'repeater-tower-1)
}



@camp-jam-kata[#:document-level subsection
               #:difficulty    'silver
               #:title "Repeater Tower"
               #:time-limit 5
               #:dollars 3
               #:health-bar ADD-STAR]{
  
 @(student-should-translate #:english "Make a game that has a weapon that deploys a Repeater Tower with slow bullets but a fast fire rate."
                            #:lang    'battle-arena
                            #:code    'repeater-tower-2)
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'gold
               #:title "Repeater Tower"
               #:time-limit 5
               #:dollars 5
               #:health-bar ADD-HEART]{

 @(student-should-translate #:english "Make a game that has a weapon that deploys a Repeater Tower with a slow fire rate, but extremely powerful, fast bullets (e.g. a sniper tower).  Also add a custom bullet sprite."
                            #:lang    'battle-arena
                            #:code    'repeater-tower-3)
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
               #:health-bar ADD-STAR]{
  
 @(student-should-translate #:english "Make a game that has a custom weapon that deploys a fast, spread shooting dagger tower."
                            #:lang    'battle-arena
                            #:code    'dagger-tower-2)
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'gold
               #:title "Dagger Tower"
               #:time-limit 5
               #:dollars 5
               #:health-bar ADD-HEART]{
    
 @(student-should-translate #:english "Make a game that has a custom weapon that deploys a fast, spread shooting dagger tower with a custom dagger."
                            #:lang    'battle-arena
                            #:code    'dagger-tower-3)
}


@include-section["avatar-katas.scrbl"]
@include-section["enemy-katas.scrbl"]


