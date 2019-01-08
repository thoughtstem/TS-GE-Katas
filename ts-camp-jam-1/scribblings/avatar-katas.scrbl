#lang scribble/manual

@(require "ts-camp-jam-kata-util.scrbl")
@(require ts-kata-util)

@;====== AVATAR KATAS =======
@title{Avatar Katas}

@;----- Air AVATAR ------

@camp-jam-kata[#:document-level section
               #:difficulty    'air
               #:title "Avatar"
               #:time-limit 1
               #:dollars 0
               #:review/introduce "core values"
               #:extra-dollars-for "lively discussion"]{

 Game design vocab!

  @(student-should-know-difference-between
    '("Player" "A human being playing a game")
    '("Avatar" "A player's represetation in the game"))

  The are NOT the same!  (Lots of people in the world don't know this)
}


@;====== Stone AVATAR ------

@camp-jam-kata[#:document-level section
               #:difficulty    'stone
               #:title "Avatar"
               #:time-limit 1
               #:dollars 0
               #:review/introduce "core values"
               #:extra-dollars-for "lively discussion"]{

 @side-note["Format"]{It's probably not important to officially
  time students on this kata.  It's also okay to encourage lively discussion.
 Some of the pictures are funny, and that's okay.}

 Students should be able to identify each of the following as either
 avatars or players:

 @(image "scribblings/imgs/avatars/tomato-dance.gif")
         @;#:scale .5)

 @(image "scribblings/imgs/players/players2.jpg")
         @;#:scale .02) 

 @(image "scribblings/imgs/avatars/avatar-dance.gif")
         @;#:scale .8) 

 @(image "scribblings/imgs/players/players.jpg")
         @;#:scale .5) 

 @(image "scribblings/imgs/avatars/bear-dance.gif")
         @;#:scale .6) 
 }

@;----- BRONZE AVATAR ------

@camp-jam-kata[#:document-level section
               #:difficulty    'bronze
               #:title "Avatar"
               #:time-limit 5
               #:dollars 1
               #:health-bar COLOR-BAR
               #:review/introduce "meaning of #lang ts-camp-jam-1, battle-arena-game, avatar, keyword."
               #:extra-dollars-for "helping teammates."]{
 @(student-should-translate #:english "Make a game with an avatar."
                            #:lang 'battle-arena
                            #:code 'avatar-1)
}

@;----- SILVER AVATAR ------

@camp-jam-kata[#:document-level section
               #:difficulty    'silver
               #:title "Avatar"
               #:time-limit 5
               #:dollars 3
               #:health-bar ADD-STAR
               #:review/introduce "new keyword, the circle function & its parameters."
               #:extra-dollars-for "helping teammates, trying new colors or shapes."]{

 @side-note["Additional shapes"]{triangle, square, star, rectangle (needs
  2 numbers), ellipse (needs 2 numbers).}
  
 @student-should-translate[#:english "Make a game with a blue circle avatar."
                           #:lang 'battle-arena
                           #:code 'avatar-2]
}


@;----- GOLD AVATAR ------

@camp-jam-kata[#:document-level section
               #:difficulty    'gold
               #:title "Avatar"
               #:time-limit 10
               #:dollars 5
               #:health-bar ADD-HEART
               #:review/introduce "(my-avatar) can be renamed to anything, the (random-character-sprite) will choose a random sprite each time you run the game."
               #:extra-dollars-for "helping teammates."]{
                                                                                            

 @(student-should-translate #:english "Make a game with a random-character-sprite as your avatar."
                            #:lang 'battle-arena
                            #:code 'avatar-3)
}


@;----- PLATINUM AVATAR ------

@camp-jam-kata[#:document-level section
               #:difficulty    'platinum
               #:title "Avatar"
               #:time-limit 10
               #:dollars 7
               #:health-bar ADD-HEART
               #:review/introduce "interactions window, sheet->sprite, columns (number of images in the row)"
               #:extra-dollars-for "helping teammates."]{

 @side-note["Tip"]{The interactions window is the right side of DrRacket where all the code spits
 out when you run a program.}
                                                                     
 Students should type the following code into the interactions window:

 @codeblock{(random-character-row)}

 and hit enter to run. Students then can use @bold{ctrl + up arrow} and @bold{enter} to rerun this line
 multiple times.

 Once a student finds an avatar they want to use, @bold{highlight the image} and @bold{copy} using ctrl + c
 or right-click, copy. Paste the image (represented by STUDENT_IMAGE_HERE) into the code as seen below.
                                                                     
 @(student-should-translate #:english "Make a game with a defined custom avatar that has a
                                       sprite you chose from the random-character-row list."
                            #:lang 'battle-arena
                            #:code 'avatar-4)
}
