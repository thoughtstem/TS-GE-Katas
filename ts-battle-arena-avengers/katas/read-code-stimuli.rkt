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



   'health-1
   (read "Make a game that has an powerup that increases your health by 50.")

   'health-2
   (read "Make a game that has an powerup that recovers your health to 100.")

   'health-3
   (read "Make a game that has both a Health and a Max Health defined powerup.")



   'boost-1
   (read "Make a game that has a powerup that temporarily boosts your damage.")

   'boost-2
   (read "Make a game that has a powerup that temporarily boosts your speed.")

   'boost-3
   (read "Make a game that has both a Damage and a Speed Boost powerup.")


   
   'shield-1
   (read "Make a game that has an powerup that increases your shield by 50.")

   'shield-2
   (read "Make a game that has an powerup that recovers your shield to 100.")

   'shield-3
   (read "Make a game that has both a Shield and Max Shield defined powerup.")
   

   
   'force-field-1
   (read "Make a game that has an item with a custom name that spawns a force field.")

   'force-field-2
   (read "Make a game that has an item with a custom name and sprite, that spawns a force field with a custom duration.")

   'force-field-3
   (read "Make a game that has an item with a custom name and sprite, that spawns a force field with a custom duration, and that allows friendly darts to go through it.")


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
   

   
   'lava-pit-1
   (read "Make a game that has a custom weapon that deploys a lava pit.")

   'lava-pit-2
   (read "Make a game that has a custom weapon that deploys a lava pit with custom damage and size.")

   'lava-pit-3
   (read "Make a game that has a custom weapon that deploys a lava pit with custom damage, size, sprite, and range.")

   

   'spike-mine-1
   (read "Make a game that has a weapon that deploys a default spike mine")
   
   'spike-mine-2
   (read "Make a game that has a weapon that deploys a spike mine with a large range and speed")
   
   'spike-mine-3
   (read "Make a game that has a weapon that deploys a spike mine with a large range and speed, high damage, and non-default sprite")

   ))