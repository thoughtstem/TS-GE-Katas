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
   (list "To customize the " (bold "#:tile") " you must also customize the "
         (bold "#:position"))
))