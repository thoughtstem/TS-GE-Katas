#lang scribble/manual

@(require "ts-camp-jam-kata-util.scrbl")
@(require ts-kata-util)

@;====== ARMOR KATAS ======
@;============== DAY 4 ================
@title{Armor Katas}

@include-section["enemy-katas.scrbl"]

@section{Enemy Weapon Katas}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'bronze
               #:title "Enemy Weapon"
               #:time-limit 5
               #:dollars 1
               #:health-bar COLOR-BAR
               #:review/introduce "meaning of #lang ts-camp-jam-1, battle-arena-game, keyword, list, dart."
               #:extra-dollars-for "helping teammates."]{

 @side-note["Tip"]{In addition to @italic{sword} you can use any of these: paint, spear, lava-builer, spike-mine-builder, or spear-tower-builder.}
  
 @(student-should-translate #:english "Make a game that has a an enemy and give it a custom weapon."
                            #:lang 'battle-arena
                            #:code 'enemy-weapon-1)
 }

@camp-jam-kata[#:document-level subsection
               #:difficulty    'silver
               #:title "Enemy Weapon"
               #:time-limit 5
               #:dollars 3
               #:health-bar ADD-STAR
               #:review/introduce "meaning of damage, size, multiple keywords."
               #:extra-dollars-for "helping teammates."]{

 @side-note["Tip"]{Remember, all the keywords (denoted by @italic{#: }) are always optional.}

 @(student-should-translate #:english "Make a game that has an enemy, give it a custom weapon and customize it."
                            #:lang 'battle-arena
                            #:code 'enemy-weapon-2)
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'gold
               #:title "Enemy Weapon"
               #:time-limit 5
               #:dollars 5
               #:health-bar ADD-HEART
               #:review/introduce "meaning of sprite, range."
               #:extra-dollars-for "helping teammates, creativity."]{

 @side-note["Tip"]{Remember, all the keywords (denoted by @italic{#: }) are always optional.}
                                                                     
 @(student-should-translate #:english "Make a game that has am enemy, give it a custom weapon, and customize the dart."
                            #:lang 'battle-arena
                            #:code 'enemy-weapon-3)
}




@section{Repeater Armor Katas}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'bronze
               #:title "Repeater Armor"
               #:time-limit 5
               #:dollars 1
               #:health-bar COLOR-BAR
               #:review/introduce "meaning of #lang ts-camp-jam-1, battle-arena-game, keyword,
                                   list, what make-icon does."
               #:extra-dollars-for "helping teammates."]{
                                                         
 @side-note["Tip"]{This isn't going to work to to protect your avatar yet! That's in the next kata.}                                                        
                                                         
 @(student-should-translate #:english "Make a game that has armor called Repeater Armor."
                            #:lang 'battle-arena
                            #:code 'repeater-armor-1)
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'silver
               #:title "Repeater Armor"
               #:time-limit 5
               #:dollars 3
               #:health-bar ADD-STAR
               #:review/introduce "figure out why #:change-damage has (divide by)."
               #:extra-dollars-for "helping teammates."]{

 @side-note["Tip"]{The name after the #:protects-from keyword must match the name of the weapon held by the
                   enemy.}
  
 @side-note["Rarities"]{All rarity levels are 'common, 'uncommon, 'rare, 'epic, and 'legendary.}
  
 @(student-should-translate #:english "Make a game that has working Repeater Armor."
                            #:lang 'battle-arena
                            #:code 'repeater-armor-2)
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'gold
               #:title "Repeater Armor"
               #:time-limit 5
               #:dollars 5
               #:health-bar ADD-HEART
               #:review/introduce "meaning of damage."
               #:extra-dollars-for "helping teammates."]{

 @(student-should-translate #:english "Make a game that has 10 enemies with a repeater and armor for your avatar
                                       that will protect against that repeater!"
                            #:lang 'battle-arena
                            #:code 'repeater-armor-3)
}


@;======= SWORD ARMOR KATAS ==========

@section{Sword Armor Katas}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'bronze
               #:title "Sword Armor"
               #:time-limit 5
               #:dollars 1
               #:health-bar COLOR-BAR
               #:review/introduce "meaning of #lang ts-camp-jam-1, battle-arena-game, keyword,
                                   list, what make-icon does."
               #:extra-dollars-for "helping teammates."]{

 @side-note["Tip"]{This isn't going to work to to protect your avatar yet! That's in the next kata.}
  
 @(student-should-translate #:english "Make a game that has armor called Sword Armor."
                            #:lang 'battle-arena
                            #:code 'sword-armor-1)
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'silver
               #:title "Sword Armor"
               #:time-limit 5
               #:dollars 3
               #:health-bar ADD-STAR
               #:review/introduce "what does (subtract by...) after #:change-damage mean?"
               #:extra-dollars-for "helping teammates."]{
                                                         
 @(student-should-translate #:english "Make a game that has working Sword Armor."
                            #:lang 'battle-arena
                            #:code 'sword-armor-2)
}

@camp-jam-kata[#:document-level subsection
               #:difficulty    'gold
               #:title "Sword Armor"
               #:time-limit 5
               #:dollars 5
               #:health-bar ADD-HEART
               #:review/introduce "meaning of damage."
               #:extra-dollars-for "helping teammates."]{
    
 @(student-should-translate #:english "Make a game that has 10 enemies with a sword and armor for your avatar
                                       that will protect against that sword!"
                            #:lang 'battle-arena
                            #:code 'sword-armor-3)
}


@include-section["avatar-katas.scrbl"]

@section{Example Camp Jam code (w/definitions)}

This is an example of how all the components come together during camp-jam into one piece of code:

---------------------

@codeblock{#lang battle-arena}
@racketblock[
 (define (cool-guy)
   (custom-avatar
    #:sprite (circle 30 'solid 'blue)))

(define (my-weapon)
  (custom-weapon
   #:name        "Sword"
   #:dart        (sword)
   #:fire-rate   10
   #:rapid-fire? #t))
  
 (define (bad-guy)
   (custom-enemy
    #:ai              'easy
    #:health          200
    #:shield          100
    #:amount-in-world 10
    #:weapon          (my-weapon)))

 (battle-arena-game
  #:avatar (cool-guy)
  #:enemy-list (list (bad-guy))
 )
 ]

@section{Example Camp Jam code (w/in-line)}

This is an example of how all the components come together during camp-jam into one piece of code:

@codeblock{#lang battle-arena}
@racketblock[

 (battle-arena-game
  #:avatar (custom-avatar
            #:sprite (circle 30 'solid 'blue))
  #:enemy-list (list (custom-enemy
                      #:ai              'easy
                      #:health          200
                      #:shield          100
                      #:amount-in-world 10
                      #:weapon   (custom-weapon
                                  #:name        "Sword"
                                  #:dart        (sword)
                                  #:fire-rate   10
                                  #:rapid-fire? #t))))

 ]