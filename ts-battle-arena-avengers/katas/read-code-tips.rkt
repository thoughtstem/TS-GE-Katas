#lang racket

(provide tips)

(require ts-kata-util/katas/main)
(require scribble/manual)

(define tips
  (list

   'avatar-2
   (list "Look for more sprites in the " (bold "Assets Library") ".")

   'enemy-weapon-2
   (list "Other darts are " (bold "(energy-blast)") ", " (bold "(star-bit)") ", "
         (bold "(magic-orb)") ", and " (bold "(flying-hammer)") ".")

   'power-2
   (list "Other darts are " (bold "(energy-blast)") ", " (bold "(star-bit)") ", "
         (bold "(magic-orb)") ", and " (bold "(flying-hammer)") ".")

   'power-3
   (list "The rarity levels are " (bold "'common") ", " (bold "'uncommon") ", " (bold "'rare") ", "
         (bold "'epic") ", " (bold "'legendary") ".")

   ))
