#lang racket

(provide stimuli)

(require ts-kata-util/katas/main)

(define stimuli
  (list

   'hello-world-1
   (read "Make a Star Wars game")

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


   
   'villain-weapon-1
   (read "Make a game that has a an enemy and give it a blaster with yellow darts.")

   'villain-weapon-2
   (read "Make a game that has a custom sprite enemy and give it a red lightsaber as a weapon.")

   'villain-weapon-3
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


   'lightsaber-armor-1
   (read "Make a game that has working Lightsaber Armor.")

   'lightsaber-armor-2
   (read "Make a game that has a fully customized Lightsaber Armor.")

   'lightsaber-armor-3
   (read "Make a game that has an enemy with a lightsaber and armor for your hero that will protect against that lightsaber!")

   
   
   'blaster-armor-1
   (read "Make a game that has working Blaster Armor.")

   'blaster-armor-2
   (read "Make a game that has a fully customized Blaster Armor.")

   'blaster-armor-3
   (read "Make a game that has an enemy with a blaster and armor for your hero that will protect against that blaster!")


   
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