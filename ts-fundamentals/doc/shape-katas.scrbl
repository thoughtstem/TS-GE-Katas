#lang scribble/manual

@(require 2htdp/image)

@(define (shape-kata)       (circle 10 'solid 'orange))

@;=== Shape Katas ===

@title{Shape Katas} @; rename "shape" to something more interesting?


@;-------- BRONZE ---------

@section{Bronze Shape Kata (5 minutes)}
A.K.A. Red Circle Kata

@margin-note*{Teaching Tip: Start with all the code projected/written on the board.
              Remove the lines one by one, testing the students each time.}

To earn this Kata @(shape-kata) students should create a red circle.

Like so:

@codeblock{
 #lang racket
 (require 2htdp/image)
 (circle 80 'solid 'red)}


@;-------- SILVER ---------

@section{Silver Shape Kata (5 minutes)}
A.K.A. Any Shape Kata

@margin-note*{Teaching Tip: Don't give any example code for this badge.
              Have students extrapolate from circle code.}

To earn this Kata @(shape-kata) students should translate a sentence of this type:

@italic{Make a gold star that is 30 pixels.}

To code of this type:

@codeblock{
 #lang racket
 (require 2htdp/image)
 (star 30 'solid 'gold)}

@margin-note*{This badge should ONLY be earned after student has built
              multiple shapes. }

Other shapes to use:
@itemlist[@item{triangle}
          @item{square}
          @item{rectangle *note: needs 2 number arguments}
          @item{ellipse   *note: needs 2 number arguments}]

@;--------- GOLD ---------

@section{Gold Shape Kata (5 minutes)}
A.K.A. Break-It Shape Kata

To earn this Kata @(shape-kata) students code a shape with a color that @bold{doesn't} work.

NOTE: The code @bold{must still run}, but the shape should appear black.

For example:

@codeblock{
 #lang racket
 (require 2htdp/image)
 (square 30 'solid 'puce)}

@;--------- PLATINUM ---------

@section{Platinum Shape Kata}
A.K.A. Not-Solid Kata

To earn this Kata @(shape-kata) students should find the 1 other option that is the opposite of @racket['solid] and code a shape featuring it.

@margin-note*{Teaching Tip: Put your students into teams to figure this
one out. Encourage super secrecy in order not to give away the answer to
 other teams!}

An example:

@codeblock{
 #lang racket
 (require 2htdp/image)
 (triangle 50 'outline 'purple)}