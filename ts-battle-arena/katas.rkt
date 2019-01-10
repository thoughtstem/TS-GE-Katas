#lang racket

(provide battle-arena-katas
         battle-arena-proto-katas)

(require ts-kata-util/katas/main)

;Katas start as examples in some langauge.
;  "Proto katas" we could call them.
(define battle-arena-proto-katas
  (lang->kata-collection 'battle-arena))

;The main thing these "proto katas" are missing
;  is a clear stimulus.  (The response is simply "write the code")
;Here we'll craft the stimuli, using the langauge that's appropriate
;  for this kata collection.
(define battle-arena-katas
  (fill-in-stimuli battle-arena-proto-katas
   
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
   
   ))


;Now we just slice up the kata collection in a bunch of ways
;  Gives us a variety of ways to present the information later
(define-sub-collections battle-arena-katas
  avatar-katas
  paint-thrower-katas
  magic-balance-katas
  melee-balance-katas
  repeater-balance-katas
  spear-tower-katas
  dagger-tower-katas
  repeater-tower-katas
  single-shot-katas
  spread-shot-katas
  homing-repeater-katas
  spike-mine-katas
  lava-katas
  repeater-armor-katas
  sword-armor-katas
  enemy-weapon-katas
  ;A few special ones require us to filter out certain other katas.
  (enemy-katas
   (not/c (curryr name-contains? "Weapon")))
  (sword-katas
   (not/c (curryr name-contains? "Tower")))
  (spear-katas
   (not/c (curryr name-contains? "Tower"))))


