#lang scribble/manual

@(require 2htdp/image)

@(define (picture-project)  (circle 10 'solid 'pink))

@;=== Picuture Project Katas ===

@title{Picture Project Katas}

@;-------- BRONZE --------

@(picture-project) @bold{Bronze Piture Project Kata} or @bold{House Kata} (5 minutes)

Within five minutes, the student can build a simple house picture.

For example:

@codeblock{
#lang racket
(require 2htdp/image)

(above
 (triangle 100 'solid 'aqua)
 (square 100 'solid 'blue))}

@;-------- SILVER --------

@(picture-project) @bold{Silver Picture Project Kata} or @bold{Tree Kata} (5 minutes)

Within five minutes, the student can build a simple tree picture.

Example complete code:

@codeblock{
#lang racket
(require 2htdp/image)

(above
 (circle 30 'solid 'green)
 (rectangle 20 80 'solid 'brown))}

@;-------- GOLD --------

@(picture-project) @bold{Gold Picture Project Kata} or @bold{House Plus Kata} (10 minutes)

Within ten minutes, the student can build a simple house picture, adding a door.

@margin-note*{Teaching Tip: Spend some time messing around with overlay/align. Options for the
first parameter, "middle", also include "right" and "left." "bottom" can also be "middle" or "top"}

Example complete code:

@codeblock{
#lang racket
(require 2htdp/image)

(above
 (triangle 100 'solid 'aqua)
 
 (overlay/align "middle" "bottom"
                (rectangle 30 50 'solid 'brown)
                (square 100 'solid 'blue)))}

@;-------- PLATNIUM --------

@(picture-project) @bold{Platnium Picture Project Kata} or @bold{House Set Kata} (10 minutes)

Within ten minutes, the student can build a house with a door beside

@margin-note*{Teaching Tip: You may want to start with the complete code from the last kata,
then add the new code (focusing on relationships and parentheses), before you start building
 it all from scratch.}

Example complete code:

@codeblock{
#lang racket
(require 2htdp/image)

(beside/align "bottom"
 (above
  (triangle 100 'solid 'aqua)
 
  (overlay/align "middle" "bottom"            
                 (rectangle 30 50 'solid 'brown)
                 (square 100 'solid 'blue)))

 (above
  (circle 30 'solid 'green)
  (rectangle 20 80 'solid 'brown)))}