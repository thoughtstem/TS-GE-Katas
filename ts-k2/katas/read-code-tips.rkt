#lang racket

(provide tips)

(require ts-kata-util/katas/main)
(require ts-kata-util/katas/rendering/scribble)
(require scribble/manual)

(define tips
  (list

   'farm-004
   (list "The Question Mark icon means students can choose any sprite.")


   'zoo-001
   (list "Move with " (bold "ARROW KEYS") " and eat food with "
         (bold "SPACE BAR") ". A new food will spawn each time one is eaten.")
   
   'zoo-004
   (list "The Question Mark icon means students can choose any sprite.")

   'zoo-006
   (list "Instead of choosing a sprite, you can also put the "
         (bold "Question Mark") " in your code to get a random avatar sprite each game.")

   'zoo-011
   (list "Collect coins with " (bold "SPACE BAR")
         ". A new coin will spawn each time one is collected.")

   'zoo-019
   (list "Move with " (bold "ARROW KEYS") " and heal animals with "
         (bold "h") ". A message will appear when an animal is fully healed.")

   'zoo-024
   (list "This will make the same game as above, but it uses numbers as inputs.")

   ))
