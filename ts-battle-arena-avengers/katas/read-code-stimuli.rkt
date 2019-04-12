#lang racket

(provide stimuli)

(require ts-kata-util/katas/main)

(define stimuli
  (list

   'hello-world-1
   (read "Make an Avengers game")

  
   'avatar-1
   (read "Make a game with a hero.")
   'avatar-2
   (read "Make a game with a predifined sprite as your hero.")
   'avatar-3
   (read "Make a game that has a custom hero with a custom sprite and 15 speed.")
   'avatar-4
   (read "Make a game that has a custom hero with a custom sprite, 20 speed, arrow-keys movement, and 5 item slots.")
   'avatar-5
   (read "Make a game that has a custom hero with a custom sprite, 25 speed, 5 item slots, and 200 for health, max-health, shield, and max-shield.")

   
   'enemy-1
   (read "Make a game with a villain.")
   'enemy-3
   (read "Make a game with a 5 custom sprite villains, 'medium ai, 200 health, and 100 shield.")
   'enemy-4
   (read "Make a game with 2 custom sprite villains. 5 of the first one with 'easy ai, and 50 health. 3 of the second one with 'hard ai, and 200 health. ")

   
   'enemy-weapon-1
   (read "Make a game that has a an enemy with a custom power with a yellow energy dart.")
   'enemy-weapon-2
   (read "Make a game that has a enemy with a custom sprite and a custom power with a purple ring of fire dart.")
   'enemy-weapon-3
   (read "Make a game that has a enemy with a custom sprite and a fully customized power.")

   
   'power-1
   (read "Make a game with an energy blast power.")
   'power-2
   (read "Make a game with a custom power and customize color and the damage.")
   'power-3
   (read "Make a game with a defined and customized power.")
   'power-4
   (read "Make a game with two custom power.")
   
   
   'background-1
   (read "Make a game that has a random colored planet.")
   'background-2
   (read "Make a game that uses a predefined image as the planet.")
   'background-3
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