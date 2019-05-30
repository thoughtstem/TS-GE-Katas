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
   (read-prefix "with Thor as the hero.")
   'avatar-3
   (read-prefix "with a fast-moving Hulk as the hero.")
   'avatar-4
   (read-prefix "with a fast-moving Drax, a large backpack, and double the health and shield values.")

   
   'background-1
   (read-prefix "with a custom planet.")
   'background-2
   (read-prefix "with a lava planet.")
   'background-4
   (read-prefix "with a high definition lava planet, a smaller grid, and different starting tile.")


   'level-design-1
   (read-prefix "with a forest planet filled with trees.")
   'level-design-3
   (read-prefix "with a pink planet filled with candy-cane-trees and snow-pine-trees.")


   'enemy-1
   (read-prefix "with a villain.")
   'enemy-3
   (read-prefix "with a few Lokis as the villains, give them a higher difficulty, and double their heatlh and shield.")
   'enemy-4
   (read-prefix "with a some Winter Soldiers that have a low difficulty and half their health, and fewer Red Skulls that have a higher diffuculty and double health.")

   
   'enemy-weapon-1
   (read-prefix "with a villain that uses an energy blast of a different color.")
   'enemy-weapon-3
   (read-prefix "with Mandarin as the villain that uses a more powerful, faster, and more durable ring of fire of a custom color.")

   
   'power-2
   (read-prefix "with a more powerful energy blast of a custom color.")
   'power-3
   (read-prefix "with more powerful, faster and rarer start bit of a custom color.")
   'power-4
   (read-prefix "with two custom power.")

   
   'drone-2
   (read-prefix "with an energy drone that has a custom color and different shooting style.")
   'drone-3
   (read-prefix "with a more powerful, faster-shooting, custom color, homing energy drone.")


   'armor-1
   (read-prefix "that has a collectible Energy Armor.")
   'armor-2
   (read-prefix "that has a fully customized Energy Armor.")
   'armor-3
   (read-prefix "that has an enemy and armor to protect your hero!")
   
   ))