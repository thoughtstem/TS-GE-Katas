#lang racket

(provide tips)

;(require ts-kata-util/katas/main)
;(require ts-kata-util/katas/rendering/scribble)
(require scribble/manual)

(define tips
  (list

   'code-value-1
   (list "Have the students vote for one of the given mottos, or lead a brainstorm to come up with a different one.")

   'hello-world-1
   (list "This is the simplest game possible.")

   'avatar-3
   (list "The default speed is " (bold "10") ".")

  'npc-1 
   (list "The NPC modes are " (bold "'still") ", " (bold "'follow") ", " (bold "'wander")
         " (the default), and " (bold "'pace") ".")

))