#lang racket

(provide stimuli)

(require ts-kata-util/katas/main)

(define stimuli
  (list

   'hello-world-1
   (read "Make an Avengers game")

  
   'hero-1
   (read "Make a game with a hero.")
   'hero-2
   (read "Make a game with a predifined sprite as your hero.")
   'hero-3
   (read "Make a game with a fully customized hero.")

   
   'villain-1
   (read "Make a game with a villain.")
   'villain-2
   (read "Make a game with a defined and customized villain.")
   'villain-3
   (read "Make a game with a customized villain and use a predifined sprite.")

   
   'villain-power-1
   (read "Make a game that has a an enemy with a custom power with a yellow energy dart.")
   'villain-power-2
   (read "Make a game that has a enemy with a custom sprite and a custom power with a purple ring of fire dart. .")
   'villain-power-3
   (read "Make a game that has a enemy with a custom sprite and a fully customized power.")

   
   'power-1
   (read "Make a game with a custom power.")
   'power-2
   (read "Make a game with a custom power and customize the name, icon, and dart.")
   'power-3
   (read "Make a game with a defined and customized power.")
   'power-4
   (read "Make a game with a fully customized power.")
   'power-5
   (read "Make a game with two custom power.")
   
   
   'planet-1
   (read "Make a game that has a random colored planet.")
   'planet-2
   (read "Make a game that uses a predefined image as the planet.")
   'planet-3
   (read "Make a game that has a fully customized planet.")


   'droid-1
   (read "Make a game that lets you spawn a Droid that attacks at enemies.")
   'droid-2
   (read "Make a game that lets you spawn a Droid that attacks with yellow energy blasts.")
   'droid-3
   (read "Make a game that lets you spawn a Droid that attacks with a fully customized energy dart.")


   'armor-1
   (read "Make a game that has a collectible Energy Armor.")
   'armor-2
   (read "Make a game that has a fully customized Energy Armor.")
   'armor-3
   (read "Make a game that has an enemy and armor to protect your hero!")
   
   ))