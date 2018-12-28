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

 @image{scribblings/imgs/avatars/tomato-dance.gif}

 @image{scribblings/imgs/players/players2.jpg} 

 @image{scribblings/imgs/avatars/avatar-dance.gif}

 @image{scribblings/imgs/players/players.jpg} 

 @image{scribblings/imgs/avatars/bear-dance.gif} 
 }








@;----- BRONZE AVATAR ------

@camp-jam-kata[#:document-level section
               #:difficulty    'bronze
               #:title "Avatar"
               #:time-limit 5
               #:dollars 1
               #:health-bar COLOR-BAR
               #:review/introduce "meaning of #lang battle-arena, battle-arena-game, avatar, keyword."
               #:extra-dollars-for "helping teammates."]{
 @(student-should-translate #:english "Make a game with an avatar."
                            #:lang    'battle-arena
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
                           #:lang    'battle-arena
                           #:code 'avatar-2]
}


@;----- GOLD AVATAR ------

@camp-jam-kata[#:document-level section
               #:difficulty    'gold
               #:title "Avatar"
               #:time-limit 10
               #:dollars 5
               #:health-bar ADD-HEART
               #:review/introduce "(my-avatar) can be renamed to anything, draw simple -- nothing is saved for later."
               #:extra-dollars-for "helping teammates, creativity."]{
                                                                                            
 @side-note["Tip"]{Give students the piskel cheat sheet.}

 @(student-should-translate #:english "Make a game with a simple custom avatar created in Piskel."
                            #:lang    'battle-arena
                            #:code 'avatar-3)
}


@;----- PLATINUM AVATAR ------

@camp-jam-kata[#:document-level section
               #:difficulty    'platinum
               #:title "Avatar"
               #:time-limit 10
               #:dollars 1
               #:health-bar ADD-HEART
               #:review/introduce "what do new keywords mean? what does sheet->sprite mean?"
               #:extra-dollars-for "helping teammates, creativity."]{
 @(student-should-translate #:english "Make a game with a custom avatar that uses a sprite sheet created in Piskel and adds additional customizations to (custom-avatar) including key-mode and mouse-aim."
                            #:lang    'battle-arena
                            #:code 'avatar-4)
}
