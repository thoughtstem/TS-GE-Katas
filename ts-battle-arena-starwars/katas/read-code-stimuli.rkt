#lang racket

(provide stimuli)

(require ts-kata-util/katas/main)

(define stimuli
  (list

   'hello-world-1
   (read "Make a Star Wars game")

   'avatar-1
   (read "Make a game with a hero.")

   'avatar-2
   (read "Make a game with a predifined sprite as your hero.")

   'avatar-3
   (read "Make a game with a fully customized hero.")


   
   'enemy-1
   (read "Make a game with a villain.")

   'enemy-2
   (read "Make a game with a defined and customized villain.")

   'enemy-3
   (read "Make a game with a customized villain and use a predifined sprite.")


   
   'enemy-weapon-1
   (read "Make a game that has a an enemy and give it a blaster with yellow darts.")

   'enemy-weapon-2
   (read "Make a game that has a custom sprite enemy and give it a red lightsaber as a weapon.")

   'enemy-weapon-3
   (read "Make a game that has a custom sprite enemy and give it a double lightsaber as a weapon.")

   

   'lightsaber-1
   (read "Make a game that has a lightsaber.")

   'lightsaber-2
   (read "Make a game with your own defined lightsaber.")

   'lightsaber-3
   (read "Make a game with your own defined fully customized lightsaber.")

   


   'blaster-1
   (read "Make a game that has a blaster.")

   'blaster-2
   (read "Make a game with your own defined blaster.")

   'blaster-3
   (read "Make a game with your own defined fully customized blaster.")



   'background-1
   (read "Make a game that has a random colored planet.")

   'background-2
   (read "Make a game that uses a predefined image as the planet.")

   'background-3
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





   'lightsaber-droid-1
   (read "Make a game that has a weapon that spawns a droid with a lightsaber.")

   'lightsaber-droid-2
   (read "Make a game that has a defined weapon that spawns a droid with a customized lightsaber.")
   
   'lightsaber-droid-3
   (read "Make a game that has a defined weapon that spawns a droid with a fully customized lightsaber.")


   
   'blaster-droid-1
   (read "Make a game that has a weapon that spawns a droid with a blaster.")

   'blaster-droid-2
   (read "Make a game that has a defined weapon that spawns a droid with a customized blaster.")
   
   'blaster-droid-3
   (read "Make a game that has a defined weapon that spawns a droid with a fully customized blaster.")



   'sword-armor-1
   (read "Make a game that has a collectible Lightsaber Armor.")

   'sword-armor-2
   (read "Make a game that has a fully customized Lightsaber Armor.")

   'sword-armor-3
   (read "Make a game that has an enemy with a lightsaber and armor to protect your hero.")
   
   
   'blaster-armor-1
   (read "Make a game that has a collectible Blaster Armor.")

   'blaster-armor-2
   (read "Make a game that has a fully customized Blaster Armor.")

   'blaster-armor-3
   (read "Make a game that has an enemy with a blaster and and armor to protect your hero.")


   
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