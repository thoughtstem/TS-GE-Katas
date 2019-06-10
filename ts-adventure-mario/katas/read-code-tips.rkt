#lang racket

(provide tips)

(require ts-kata-util/katas/main)
(require scribble/manual)

(define tips
  (list

   'hello-world-1 ;;1.2
   (list "This is the simplest way to make an adventure Mario game.")

   
   'avatar-2 ;;2.2
   (list "Look for more sprites in the " (bold "Assets Library") ".")


   'coin-1 ;;3.1
   (list "The default value of a coin is " (bold "10") ".")
   'coin-3 ;;3.3
   (list "A " (bold "very rare") " coin might only appear once.")
   'coin-5 ;;3.5
   (list "Be careful with how much dialog you put on 1 line. It might be too much.")


   'level-design-2 ;;4.2
   (list "Check the " (bold "Assets Library") " for trees.")
   'level-design-4 ;;4.4
   (list (bold "Big Mario") " is still \"technically\" Mario.")


   'fetch-quest-1 ;;5.1
   (list (bold "Yoshis") " are NPCs too!")
   'fetch-quest-5 ;;5.5
   (list "You can add a " (bold "rule") " to the " (bold "#:on-drop") " variable.")


   'enemy-1 ;;6.1
   (list "A " (bold "strong") " enemy can take a lot of hits.")
   'enemy-2 ;;6.2
   (list "The options for #:ai are: " (bold "'easy") ", " (bold "'medium") ", and " (bold "'hard") ".")
   'enemy-5 ;;6.5
   (list "It'd be fun to still make a " (bold "creative") " game over cutscene.")
   
))