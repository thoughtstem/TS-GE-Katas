#lang racket

(provide (all-from-out ts-adventure/katas)
         (all-from-out ts-fundamentals/katas))

(require ts-kata-util/katas/main
         ts-fundamentals/katas
         ts-adventure/katas)

(define-kata game-jam
  (recite
   #:in "Tell me about our Final Game Jam!"
   #:out (list "Building an ADVENTURE GAME."  
               "In ONE CLASS."
               "Including: an AVATAR, ENEMIES, NPCs, FOOD, and FETCH QUESTS.")))