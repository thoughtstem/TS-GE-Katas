#lang scribble/manual

@(require "ts-game-jam-kata-util.scrbl")
@(require ts-kata-util)

@;====== AVATAR KATAS =======
@title{Avatar Katas}@; - @italic{(Day 2)}}

@;----- AVATAR AIR ------

@game-jam-kata[#:document-level section
               #:difficulty    'air
               #:title "Avatar"
               #:time-limit 1
               #:dollars 1
               #:review/introduce "core values"
               #:extra-dollars-for "lively discussion"]{
                                                        
 @side-note["Tip"]{This is a good kata to learn as a team or in small groups.}

 @(to-earn-this-rubric-kata #:badge-type    @META-KATA
                            #:game-element  "Avatar"
                            #:elements-list (list "Having an avatar"
                                                  "Any avatar within 5 minutes (sprint bonus)"
                                                  "Avatar animation frames (max 4 frames)")
                            #:points-list   (list 1
                                                  5
                                                  4))
}

@; ------ AVATAR BRONZE

@game-jam-kata[#:document-level section
               #:difficulty    'bronze
               #:title "Avatar"
               #:time-limit 5
               #:dollars 1]{

 @(to-earn-this-code-kata #:english    "Write the shortest program that creates a game with an avatar."
                          #:lang       'survival
                          #:code       'avatar-1
                          #:badge-type @AVATAR-KATA)
}

@; ------ AVATAR SILVER

@game-jam-kata[#:document-level section
               #:difficulty    'silver
               #:title "Avatar"
               #:time-limit 5
               #:dollars 3]{

 @(to-earn-this-code-kata #:english "Make a game that has a different colored shape as an avatar."
                          #:lang 'survival
                          #:code 'avatar-2
                          #:badge-type @AVATAR-KATA)
}

@; ------ AVATAR GOLD

@game-jam-kata[#:document-level section
               #:difficulty    'gold
               #:title "Avatar"
               #:time-limit 5
               #:dollars 5]{
                            
 @side-note["Tip"]{Not including drawing time, but do include exporting time.}

 @side-note["Tip"]{Replace bat-sprite with your actual image.}
 
 @(to-earn-this-code-kata #:english "Make a game that has your drawing as the avatar."
                          #:lang 'survival
                          #:code 'avatar-3
                          #:badge-type @AVATAR-KATA)


}
