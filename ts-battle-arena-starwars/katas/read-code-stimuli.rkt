#lang racket

(provide stimuli)

(require ts-kata-util/katas/main)

(define stimuli
  (list

   'hero-1
   (read "Make a game with a hero.")

   'hero-2
   (read "Make a game with a yellow star as your hero.")

   'hero-3
   (read "Make a game with a predifined sprite as your hero.")


   
   'enemy-1
   (read "Make a game with an enemy.")

   'enemy-2
   (read "Make a game with a defined and customized enemy.")

   'enemy-3
   (read "Make a game with a customized enemy and use a predifined sprite as your enemy.")


   
   'enemy-weapon-1
   (read "Make a game that has a an enemy and give it a custom blaster with yellow darts.")

   'enemy-weapon-2
   (read "Make a game that has a custom sprite enemy and give it a red lightsaber as a weapon.")

   'enemy-weapon-3
   (read "Make a game that has a custom sprite enemy and give it a double lightsaber as a weapon.")

   

   'lightsaber-1
   (read "Make a game that has a lightsaber.")

   'lightsaber-2
   (read "Make a game with your own defined lightsaber.")

   'lightsaber-3
   (read "Make a game with your own defined lightsaber dart.")

   


   'blaster-1
   (read "Make a game that has a blaster.")

   'blaster-2
   (read "Make a game with your own defined blaster.")

   'blaster-3
   (read "Make a game with your own defined blaster dart.")



   'planet-1
   (read "Make a game that has a random colored planet.")

   'planet-2
   (read "Make a game that uses a predefined image as the planet.")

   'planet-3
   (read "Make a game that has a fully customized planet.")



   'heal-1
   (read "Make a game that has an item that gives you some health.")

   'heal-2
   (read "Make a game that has an item that fills your health bar.")

   'heal-3
   (read "Make a game that has both healing items.")



   'boost-1
   (read "Make a game that has a powerup that temporarily boosts your damage.")

   'boost-2
   (read "Make a game that has a powerup that temporarily boosts your speed.")

   'boost-3
   (read "Make a game that has both Damage and Speed Boost Powerups, defined outside battle-arena-game.")

   

   'spear-1
   (read "Make a game that has a spear.")

   'spear-2
   (read "Make a game with your own defined spear.")

   'spear-3
   (read "Make a game that has a fully customizable spear in it where you can modify its damage and durability.")

   'spear-4
   (read "Make a game that has a fully customizable spear in it where you can modify its speed, range, and sprite.")


   
  
          
   'paint-thrower-1
   (read "Make a game that has a paint thrower in it.")

   'paint-thrower-2
   (read "Make a game with your own defined paint thrower with customizable rarity.")

   'paint-thrower-3
   (read "Make a game that has a customizable paint thrower in it where you can modify the damage and durability of the paint.")

   'paint-thrower-4
   (read "Make a game that has a customizable paint thrower in it where you can modify the speed, range, and sprite of the paint.")



   'magic-balance-1
   (read "Make a game that has a light magic weapon.")

   'magic-balance-2
   (read "Make a game that has a heavy magic weapon.")
   
   'magic-balance-3
   (read "Make a game that has a light and a heavy magic weapon.  Balance them relative to each other.")


   
   'melee-balance-1
   (read "Make a game that has a light melee weapon.")

   'melee-balance-2
   (read "Make a game that has a heavy melee weapon.")
   
   'melee-balance-3
   (read "Make a game that has a light and a heavy melee weapon.  Balance them relative to each other.")
   

   
   'repeater-balance-1
   (read "Make a game that has a light repeater weapon.")

   'repeater-balance-2
   (read "Make a game that has a heavy repeater weapon.")
   
   'repeater-balance-3
   (read "Make a game that has a light and a heavy repeater weapon.  Balance them relative to each other.")

   

   'lava-1
   (read "Make a game that has a custom weapon that deploys a lava pit.")

   'lava-2
   (read "Make a game that has a custom weapon that deploys a lava pit with custom damage and size.")

   'lava-3
   (read "Make a game that has a custom weapon that deploys a lava pit with custom damage, size, sprite, and range.")


   
   'spike-mine-1
   (read "Make a game that has a weapon that deploys a default spike mine")
   
   'spike-mine-2
   (read "Make a game that has a weapon that deploys a spike mine with a large range and speed")
   
   'spike-mine-3
   (read "Make a game that has a weapon that deploys a spike mine with a large range and speed, high damage, and non-default sprite")


   
   'spear-tower-1
   (read "Make a game that has a custom weapon that deploys a spear tower.")

   'spear-tower-2
   (read "Make a game that has a custom weapon that deploys a spear tower with a speed of 10 and a range of 20.")

   'spear-tower-3
   (read "Make a game that has a custom weapon that deploys a spear tower with a custom spear image, damage level, range and speed")


   
   'repeater-armor-1
   (read "Make a game that has armor called Repeater Armor.")

   'repeater-armor-2
   (read "Make a game that has working Repeater Armor.")

   'repeater-armor-3
   (read "Make a game that has 10 enemies with a repeater and armor for your avatar that will protect against that repeater!")

   

   'sword-armor-1
   (read "Make a game that has armor called Sword Armor.")

   'sword-armor-2
   (read "Make a game that has working Sword Armor.")

   'sword-armor-3
   (read "Make a game that has 10 enemies with a sword and armor for your avatar that will protect against that sword!")


   
   'rocket-tower-1
   (read "Make a game that has a custom weapon that deploys Rocket Tower.")

   'rocket-tower-2
   (read "Make a game that has a custom weapon that deploys a slow shooting, homing Rocket Tower.")

   'rocket-tower-3
   (read "Make a game that has a custom weapon that deploys a slow shooting, homing Rocket Tower that shoots a custom rocket.")

   

   'repeater-tower-1
   (read "Make a game that has a weapon that deploys a Repeater Tower.")

   'repeater-tower-2
   (read "Make a game that has a weapon that deploys a Repeater Tower with slow bullets but a fast fire rate.")

   'repeater-tower-3
   (read "Make a game that has a custom weapon that deploys a slow shooting, homing Rocket Tower that shoots a custom rocket.")


   
   'dagger-tower-1
   (read "Make a game that has a custom weapon that deploys a dagger tower.")

   'dagger-tower-2
   (read "Make a game that has a custom weapon that deploys a fast, spread shooting dagger tower.")

   'dagger-tower-3
   (read "Make a game that has a custom weapon that deploys a fast, spread shooting dagger tower with a custom dagger.")


   
   'single-shot-1
   (read "Make a game that has a custom weapon that has a normal fire mode.")

   'single-shot-2
   (read "Make a game that has a custom weapon that has a normal fire mode and a customized dart.")

   'single-shot-3
   (read "Make a game that has a custom weapon that has a normal fire mode and a customized dart with a food sprite.")


   
   'spread-shot-1
   (read "Make a game that has a weapon that has a spread fire mode.")

   'spread-shot-2
   (read "Make a game that has a weapon that has a spread fire mode and a customized dart.")

   'spread-shot-3
   (read "Make a game that has a weapon that has a spread fire mode and a customized dart with an object sprite.")


   
   'homing-repeater-1
   (read "Make a game that has a weapon that has a hoaming fire mode.")

   'homing-repeater-2
   (read "Make a game that has a weapon that has a hoaming fire mode and a customized dart.")

   'homing-repeater-3
   (read "Make a game that has a weapon that has a hoaming fire mode and a customized dart with an animal sprite.")


   
   'grow-1
   (read "Make a game with a potion that makes you grow.")

   'grow-and-shrink
   (read "Make a game with a potion that makes you grow and then shrink")


   
   'shield-1
   (read "Make a game that has a potion that increases your shield by 50.")

   'shield-2
   (read "Make a game that has a potion that recovers your shield to 100.")

   'shield-3
   (read "Make a game that has both a Shield and Max Shield Potion, defined outside battle-arena-game.")
   ))