#lang racket

(provide stimuli)

(require ts-kata-util/katas/main)

(define (read-prefix s)
  (read (~a "Code a game " s)))
                  
(define stimuli
  (list

   'hello-world-1
   (read "Code a basic Avengers game")

  
   'avatar-1
   (read-prefix "with a hero.")
   'avatar-2
   (read-prefix "with a hero. Customize the sprite.")
   'avatar-3
   (read-prefix "with a hero defined outside the game function. Customize the sprite and the speed.")
   'avatar-4
   (read-prefix "with a hero defined outside the game function. Customize the sprite, speed, key mode, and item slots.")
   'avatar-5
   (read-prefix "with a hero defined outside the game function. Customize the sprite, speed, item slots, health, max health, shield, and max shield.")

   
   'enemy-1
   (read-prefix "with a villain.")
   'enemy-3
   (read-prefix "with a villain defined outside the game function. Customize the sprite, ai, health, shield, and the amount in the world.")
   'enemy-4
   (read-prefix "with two villains defined outside the game function. For both of them customize the sprite, ai, health, and the amount in world. ")

   
   'enemy-weapon-1
   (read-prefix "with a villain. Customize the color of the power.")
   'enemy-weapon-2
   (read-prefix "with a villain. Customize the sprite, and a custom power with a purple ring of fire dart.")
   'enemy-weapon-3
   (read-prefix "that has a enemy with a custom sprite and a fully customized power.")

   
   'power-1
   (read-prefix "with an energy blast power.")
   'power-2
   (read-prefix "with a custom power and customize color and the damage.")
   'power-3
   (read-prefix "with a defined and customized power.")
   'power-4
   (read-prefix "with two custom power.")
   
   
   'background-1
   (read-prefix "that has a random colored planet.")
   'background-2
   (read-prefix "that uses a predefined image as the planet.")
   'background-3
   (read-prefix "that has a fully customized planet.")


   'droid-1
   (read-prefix "that lets you spawn a Droid that attacks at enemies.")
   'droid-2
   (read-prefix "that lets you spawn a Droid that attacks with yellow energy blasts.")
   'droid-3
   (read-prefix "that lets you spawn a Droid that attacks with a fully customized energy dart.")


   'armor-1
   (read-prefix "that has a collectible Energy Armor.")
   'armor-2
   (read-prefix "that has a fully customized Energy Armor.")
   'armor-3
   (read-prefix "that has an enemy and armor to protect your hero!")
   
   ))