#lang scribble/manual

@(require 2htdp/image)

@(define (combo-kata)       (circle 10 'solid 'green))

@;=== Combo Katas ===

@title{Combo Katas}

@margin-note*{Teaching Tip: Take time to review the ThoughtSTEM Core Values at the top of
 each class for the first several weeks.}


@; -------- BRONZE --------

@section{Bronze Combo Kata (5 minutes)}
A.K.A. Beside Kata

@margin-note*{Teaching Tip: Test their previous knowledge and have the students
create two shapes before you show them how to beside.}

To earn this Kata @(combo-kata) students should translate a sentence of this type:

@italic{Place two red circles beside eachother.}

To code of this type:

@codeblock{
 #lang racket
 (require 2htdp/image)

 (beside
  (circle 20 'solid 'red)
  (circle 20 'solid 'red))}

@;-------- SILVER ---------

@section{Silver Combo Kata (5 minutes)}
A.K.A. Above Kata

To earn this Kata @(combo-kata) students should translate a sentence of this type:

@italic{Place two different sized triangles above one another.}

@margin-note*{Teaching Tip: Have students figure out how an above is different
than just coding two shapes in a row. (one image, centered, connected)}

To code of this type:

@codeblock{
 #lang racket
 (require 2htdp/image)

 (above
  (triangle 50 'solid 'blue)
  (triangle 80 'solid 'purple))}

@;--------- GOLD ----------

@section{Gold Combo Kata (5 minutes)}
A.K.A. Overlay Kata

To earn this Kata @(combo-kata) students should translate a sentence of this type:

@italic{Overlay one square on top of a larger square of a different color.}

@margin-note*{Remember: order of the shapes is important!}

To code of this type:

@codeblock{
 #lang racket
 (require 2htdp/image)

 (overlay
  (square 50 'solid 'blue)
  (square 80 'solid 'purple))}