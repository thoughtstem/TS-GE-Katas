#lang scribble/manual
@(require ts-kata-util)

@(define (game-jam-kata #:document-level level
                        #:badge-type     badge-type
                        #:difficulty     difficulty
                        #:title title
                        #:time-limit time-limit
                        . body)

   @kata[#:document-level level
         #:difficulty    difficulty
         #:title title
         #:time-limit time-limit]{

 @badge-type
        
 @body
 })


@title{Avatar Katas - @italic{(Day 2)}}


@(require 2htdp/image)
@(require survival)


@(define (meta-kata)     (circle 10 'outline 'black))
@(define (avatar-kata)   (circle 10 'solid   'orange))


@margin-note*{Teaching Tip: Start class reciting the first two ThoughtSTEM core values.}

@section{Paper Avatar Kata}

To earn this kata @(meta-kata) they need to:

@italic{Recite the amount of points they get from an Avatar in their game. in less than 1 minute.}

@margin-note*{Teaching Tip: This is a good kata to learn as a team or in small groups.}

@itemlist[@item{Avatar points:
           @itemlist[@item{Having an avatar              @bold{1 points}}
                     @item{Any avatar within 5 minutes
                                 @italic{(Sprint Bonus) @bold{5 points}}}
                     @item{Avatar animation frame        @bold{1 points}
                                        @itemlist[@item{Maximum 4 animations}]}]}]

@; ------ AVATAR BRONZE

@section{Avatar Katas}


@game-jam-kata[#:document-level subsection
               #:badge-type     @(avatar-kata)
               #:difficulty    'bronze
               #:title "Avatar"
               #:time-limit 5]{

 @(student-should-translate #:english "Write the shortest program that creates a game with a custom avatar."
                            #:lang 'survival
                            #:code 'basic-avatar)
}

@; ------ AVATAR SILVER

@section{Silver Avatar Kata}

@game-jam-kata[#:document-level subsection
               #:badge-type     @(avatar-kata)
               #:difficulty    'bronze
               #:title "Avatar"
               #:time-limit 5]{

 @(student-should-translate #:english "Make a game that has a red circle that is 80 pixels across as an avatar."
                            #:lang 'survival
                            #:code 'avatar-red-circle-80)
}

@; ------ AVATAR GOLD

@section{Gold Avatar Kata}

@margin-note*{Not including drawing time, but do include exporting time.}

To earn this kata @(avatar-kata) they need to:

Within five minutes, translate an English sentence of this type:

@italic{Make a game that has a custom image as an avatar.}

To code of this type:

@(define (major-triumph) (bitmap "imgs/major-triumph.png"))


@codeblock{#lang survival}
@racketblock[
 (define (my-avatar)
   (custom-avatar #:sprite #, (major-triumph) ))
  
 (survival-game
  #:avatar (my-avatar))]
