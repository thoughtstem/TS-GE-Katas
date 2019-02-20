#lang racket

(provide stimuli)

(require ts-kata-util/katas/main)

(define stimuli
  (list

   'hello-world-1
   (read "Make a basic Battle Arena game.")
   
   'spear-1
   (read "Make a game that has a spear.")

   'spear-2
   (read "Make a game with your own defined spear.")

   'spear-3
   (read "Make a game that has a fully customizable spear in it where you can modify its damage and durability.")

   'spear-4
   (read "Make a game that has a fully customizable spear in it where you can modify its speed, range, and sprite.")


   'sword-1
   (read "Make a game that has a sword.")

   'sword-2
   (read "Make a game with your own defined sword.")

   'sword-3
   (read "Make a game with a fully customized sword.")

   'sword-4
   (read "Make a game that has a customizable sword in it where you can modify its speed, range, and sprite.")

   
   'background-1
   (read "Make a game that has a custom background.")

   'background-2
   (read "Make a game that uses a predefined image as the background.")

   'background-3
   (read "Make a game that has a fully customized background.")


   
   'paint-thrower-1
   (read "Make a game that has a paint thrower in it.")

   'paint-thrower-2
   (read "Make a game with your own defined paint thrower with customizable rarity.")

   'paint-thrower-3
   (read "Make a game that has a customizable paint thrower in it where you can modify the damage and durability of the paint.")

   'paint-thrower-4
   (read "Make a game that has a customizable paint thrower in it where you can modify the speed, range, and sprite of the paint.")

         
   'avatar-1
   (read "Make a game with an avatar.")

   'avatar-2
   (read "Make a game with a blue circle avatar.")

   'avatar-3
   (read "Make a game with a random-character-sprite as your avatar.")

   'avatar-4
   (read "Make a game with a defined custom avatar that has a sprite you chose from the random-character-row list.")


   'enemy-1
   (read "Make a game with an enemy.")

   'enemy-2
   (read "Make a game with a defined and customized enemy.")

   'enemy-3
   (read "Make a game with an enemy that is one of the basic shapes.")

   'enemy-4
   (read "Make a game with a defined custom enemy that has a sprite you chose from the random-character-row list.")


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


   'spear-tower-1
   (read "Make a game that has a custom weapon that deploys a spear tower.")

   'spear-tower-2
   (read "Make a game that has a custom weapon that deploys a spear tower with a speed of 10 and a range of 20.")

   'spear-tower-3
   (read "Make a game that has a custom weapon that deploys a spear tower with a custom spear image, damage level, range and speed")


   'enemy-weapon-1
   (read "Make a game that has a an enemy and give it a custom weapon.")

   'enemy-weapon-2
   (read "Make a game that has an enemy, give it a custom weapon and customize it.")

   'enemy-weapon-3
   (read "Make a game that has am enemy, give it a custom weapon, and customize the dart.")

   
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


   'size-1
   (read "Make a game with a powerup that makes you grow.")
   'size-2
   (read "Make a game with a powerup that shrinks you.")
   'size-3
   (read "Make a game with a powerup that makes you grow and then shrink")

   'health-1
   (read "Make a game that has a powerup that gives you some health.")
   'health-2
   (read "Make a game that has a powerup that fills your health bar.")
   'health-3
   (read "Make a game that has both a Health and a Max Health powerup, defined outside battle-arena-game.")
   
   'boost-1
   (read "Make a game that has a powerup that temporarily boosts your health.")
   'boost-2
   (read "Make a game that has a powerup that temporarily boosts your speed.")
   'boost-3
   (read "Make a game that has both a Damage and a Speed Boost powerup, defined outside battle-arena-game.")

   'shield-1
   (read "Make a game that has a powerup that increases your shield by 50.")
   'shield-2
   (read "Make a game that has a powerup that recovers your shield to 100.")
   'shield-3
   (read "Make a game that has both a Shield and a Max Shield powerup, defined outside battle-arena-game.")

   'force-field-1
   (read "Make a game that has an item with a custom name that spawns a force field.")

   'force-field-2
   (read "Make a game that has an item with a custom name and sprite, that spawns a force field with a custom duration.")

   'force-field-3
   (read "Make a game that has an item with a custom name and sprite, that spawns a force field with a custom duration, and that allows friendly darts to go through it.")


   ))