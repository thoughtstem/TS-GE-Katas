#lang scribble/manual

@(require "ts-camp-jam-kata-util.scrbl")
@(require ts-kata-util)


@;====== ENEMY KATAS ======
@title{Enemy Katas}

@camp-jam-kata[#:document-level section
               #:difficulty    'air
               #:title "Enemy"
               #:time-limit 1
               #:dollars 0
               #:review/introduce "core values"
               #:extra-dollars-for "lively discussion"]{

 @side-note["Tip"]{Use discussion to help students learn these concepts.  They have all played a lot of video games.
  Help them relate these concepts to games they've played -- both Fortnite and other games.}

 Game design vocab!

 @(student-should-know-difference-between
   '("Enemy Bot" "An avatar controlled by artificial intelligence -- sometimes used by cheaters, but sometimes used by game designers to test a game.")
   '("Artificial Intelligence" "A computer program that seems to be intelligent, and can sometimes fool human players into thinking it is."))

  
}


@;----- BRONZE ENEMY ------

@camp-jam-kata[#:document-level section
               #:difficulty    'bronze
               #:title "Enemy"
               #:time-limit 5
               #:dollars 1
               #:health-bar COLOR-BAR
               #:review/introduce "meaning of #lang ts-camp-jam-1, battle-arena-game, keyword, enemy."
               #:extra-dollars-for "helping teammates."]{
 @(student-should-translate #:english "Make a game with an enemy."
                            #:lang 'battle-arena
                            #:code 'enemy-1)
}


@;----- SILVER ENEMY ------

@camp-jam-kata[#:document-level section
               #:difficulty    'silver
               #:title "Enemy"
               #:time-limit 5
               #:dollars 3
               #:health-bar ADD-STAR
               #:review/introduce "all the new keywords, keywords are always optional,
                    (my-enemy) can be anything."
               #:extra-dollars-for "helping teammates."]{
 @side-note["Hint"]{AI levels are: 'easy, 'medium, 'hard.}
  
 @(student-should-translate #:english "Make a game with a defined and customized enemy."
                            #:lang 'battle-arena
                            #:code 'enemy-2)
}


@;----- GOLD ENEMY ------

@camp-jam-kata[#:document-level section
               #:difficulty    'gold
               #:title "Enemy"
               #:time-limit 10
               #:dollars 5
               #:health-bar ADD-HEART
               #:review/introduce "shapes, the requirements for building a shape."
               #:extra-dollars-for "helping teammates."]{
                                                         
 @side-note["Additional shapes"]{triangle, square, star, rectangle (needs
  2 numbers), ellipse (needs 2 numbers).}                                                        
                                                                                 
 @(student-should-translate #:english "Make a game with an enemy that is one of the basic shapes."
                            #:lang 'battle-arena
                            #:code 'enemy-3)
}


@;----- PLATINUM ENEMY ------

@camp-jam-kata[#:document-level section
               #:difficulty    'platinum
               #:title "Enemy"
               #:time-limit 10
               #:dollars 1
               #:health-bar ADD-HEART
               #:review/introduce "interactions window, sheet->sprite, columns (number of images in the row)"
               #:extra-dollars-for "helping teammates."]{

 @side-note["Tip"]{The interactions window is the right side of DrRacket where all the code spits
 out when you run a program.}
                                                                     
 Students should type the following code into the interactions window:

 @codeblock{(random-character-row)}

 and hit enter to run. Students then can use @bold{ctrl + up arrow} and @bold{enter} to rerun this line
 multiple times.

 Once a student finds a sprite they want to use for their enemy, @bold{highlight the image} and @bold{copy}
 using ctrl + c or right-click, copy. Paste the image (represented by STUDENT_IMAGE_HERE)
 into the code as seen below.
                                                                     
 @(student-should-translate #:english "Make a game with a defined custom enemy that has a
                                       sprite you chose from the random-character-row list."
                            #:lang 'battle-arena
                            #:code 'enemy-4)
}
