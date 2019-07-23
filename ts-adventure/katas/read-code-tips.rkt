#lang racket

(provide tips)

(require ts-kata-util/katas/main)
(require ts-kata-util/katas/rendering/scribble)
(require scribble/manual)

(define tips
  (list

   'avatar-3
   (list "The default speed is " (bold "10") ".")

  'npc-1 
   (list "The NPC modes are " (bold "'still") ", " (bold "'follow") ", " (bold "'wander")
         " (the default), and " (bold "'pace") ".")

))