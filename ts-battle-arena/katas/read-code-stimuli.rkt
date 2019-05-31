#lang racket

(provide stimuli)

(require ts-kata-util/katas/main)

(define (read-prefix s)
  (read (~a "Code a game " s)))

(define stimuli
  (list

   'hello-world-1
   (read "Code a basic Battle Arena game.")

   
   'spear-1
   (read-prefix "that has a spear.")
   'spear-2
   (read-prefix "that has a spear with 50 damage.")
   'spear-3
   (read-prefix "that has an 'epic rarity spear with 50 damage.")
   'spear-4
   (read-prefix "that has a 'blue 'legendary spear with 100 damage, 20 speed, and 10 range.")


   'sword-1
   (read-prefix "that has a sword.")
   'sword-2
   (read-prefix "that has a sword that does 50 damage.")
   'sword-3
   (read-prefix "that has an 'epic sword that does 50 damage.")
   'sword-4
   (read-prefix "that has a 'gold 'legendary sword with 100 damage and 100 duration.")

   
   'background-1
   (read-prefix "that has a custom background.")
   'background-2
   (read-prefix "that has a lava background.")
   'background-3
   (read-prefix "that has a lava background and a 2 by 2 grid.")
   'background-4
   (read-prefix "that has a high definition lava background, 2 by 2 grid, and starts on tile 3.")

   
   'paint-thrower-1
   (read-prefix "that has a paint thrower in it.")
   'paint-thrower-2
   (read-prefix "that has a paint thrower with 20 damage.")
   'paint-thrower-3
   (read-prefix "that has an 'epic paint thrower with 20 damage and 10 speed.")
   'paint-thrower-4
   (read-prefix "that has a 'legendary paint thrower with a customized sprite, damage, speed, and range.")

   
   'fire-magic-1
   (read-prefix "that has fire magic in it.")
   'fire-magic-2
   (read-prefix "that has fire magic with 20 damage.")
   'fire-magic-3
   (read-prefix "that has an 'epic fire magic with 20 damage and 10 speed.")
   'fire-magic-4
   (read-prefix "that has a 'legendary fire magic with a customized sprite, damage, speed, and range.")


   'ice-magic-1
   (read-prefix "that has ice magic in it.")
   'ice-magic-2
   (read-prefix "that has ice magic with 20 damage.")
   'ice-magic-3
   (read-prefix "that has an 'epic ice magic with 20 damage and 10 speed.")
   'ice-magic-4
   (read-prefix "that has a 'legendary ice magic with a customized sprite, damage, speed, and range.")

         
   'avatar-1
   (read-prefix "that has a custom avatar.")
   'avatar-2
   (read-prefix "that has a custom avatar with a sprite picked from the assets library.")
   'avatar-3
   (read-prefix "that has a custom avatar with a custom sprite and 20 speed.")
   'avatar-4
   (read-prefix "that has a custom avatar with a custom sprite, 20 speed, 5 item slots, and 200 for health, max-health, shield, and max-shield.")


   'enemy-1
   (read-prefix "with an enemy.")
   'enemy-2
   (read-prefix "with 10 random enemies")
   'enemy-3
   (read-prefix "that has 5 enemies with a darkknight sprite and 'medium ai.")
   'enemy-4
   (read-prefix "that has 5 'easy wizard enemies with 50 health and 5 'medium darkknight enemies with 200 health.")
   'enemy-5
   (read-prefix "that has 5 'hard pirategirl enemies using a custom-weapon with 50 damage.")
   

   'magic-balance-1
   (read-prefix "that has a light magic weapon.")
   'magic-balance-2
   (read-prefix "that has a heavy magic weapon.")
   'magic-balance-3
   (read-prefix "that has a light and a heavy magic weapon.  Balance them relative to each other.")

   
   'melee-balance-1
   (read-prefix "that has a 'common light melee weapon with 10 damage.")
   'melee-balance-2
   (read-prefix "that has an 'epic heavy melee weapon with 200 damage.")   
   'melee-balance-3
   (read-prefix "that has a light and a heavy melee weapon.  Balance them relative to each other.")
   

   'repeater-balance-1
   (read-prefix "that has a light repeater weapon.")
   'repeater-balance-2
   (read-prefix "that has a heavy repeater weapon.")   
   'repeater-balance-3
   (read-prefix "that has a light and a heavy repeater weapon.  Balance them relative to each other.")
   

   'lava-pit-1
   (read-prefix "that has a custom weapon that deploys a lava pit.")
   'lava-pit-2
   (read-prefix "that has a custom weapon that deploys a lava pit with custom damage and size.")
   'lava-pit-3
   (read-prefix "that has a custom weapon that deploys a lava pit with custom damage, size, sprite, and range.")


   'spike-mine-1
   (read-prefix "with a spike mine.")   
   'spike-mine-2
   (read-prefix "with a spike mine that uses fast, long ranged darts.")
   'spike-mine-3
   (read-prefix "that has a weapon that deploys a spike mine with a large range and speed, high damage, and custom sprite.")


   'spear-tower-1
   (read-prefix "that has a custom weapon that deploys a spear tower.")
   'spear-tower-2
   (read-prefix "that has a custom weapon that deploys a spear tower with a speed of 10 and a range of 50.")
   'spear-tower-3
   (read-prefix "that has a custom weapon that deploys a spear tower with a custom sprite, damage, speed, and range.")


   'enemy-weapon-1
   (read-prefix "that has a an enemy and give it a custom weapon.")
   'enemy-weapon-2
   (read-prefix "that has an enemy, give it a custom weapon and customize it.")
   'enemy-weapon-3
   (read-prefix "that has am enemy, give it a custom weapon, and customize the dart.")

   
   'repeater-armor-1
   (read-prefix "that has armor called Repeater Armor.")
   'repeater-armor-2
   (read-prefix "that has working Repeater Armor.")
   'repeater-armor-3
   (read-prefix "that has 10 enemies with a repeater and armor for your avatar that will protect against that repeater!")


   'sword-armor-1
   (read-prefix "that has armor called Sword Armor.")
   'sword-armor-2
   (read-prefix "that has working Sword Armor.")
   'sword-armor-3
   (read-prefix "that has 10 enemies with a sword and armor for your avatar that will protect against that sword!")


   'rocket-tower-1
   (read-prefix "that has a custom weapon that deploys a Rocket Tower.")
   'rocket-tower-2
   (read-prefix "that has a custom weapon that deploys a slow shooting, homing Rocket Tower.")
   'rocket-tower-3
   (read-prefix "that has a custom weapon that deploys a slow shooting, homing Rocket Tower that shoots a custom rocket.")


   'repeater-tower-1
   (read-prefix "that has a weapon that deploys a Repeater Tower.")
   'repeater-tower-2
   (read-prefix "that has a weapon that deploys a Repeater Tower with slow bullets but a fast fire rate.")
   'repeater-tower-3
   (read-prefix "that has a custom weapon that deploys a slow shooting, homing Rocket Tower that shoots a custom rocket.")


   'dagger-tower-1
   (read-prefix "that has a custom weapon that deploys a dagger tower.")
   'dagger-tower-2
   (read-prefix "that has a custom weapon that deploys a fast, spread shooting dagger tower.")
   'dagger-tower-3
   (read-prefix "that has a custom weapon that deploys a fast, spread shooting dagger tower with a custom dagger.")

   
   'single-shot-1
   (read-prefix "with a weapon that fires only once each click.")
   'single-shot-2
   (read-prefix "with a single-shot weapon that fires a dart with customized damage, speed, and range.")
   'single-shot-3
   (read-prefix "with a 'rare single-shot weapon that fires a dart with customized sprite, damage, speed, and range.")


   'spread-shot-1
   (read-prefix "with a spread-shot weapon.")
   'spread-shot-2
   (read-prefix "with a spread-shot weapon that fires customized darts that can go through one enemy and hit another.")
   'spread-shot-3
   (read-prefix "with a 'rare spread-shot weapon that fires darts with customized sprite, damage, durability, and speed.")


   'homing-repeater-1
   (read-prefix "with a weapon that fires homing darts.")
   'homing-repeater-2
   (read-prefix "with a weapon that fires homing darts with customized damage, speed, and range.")
   'homing-repeater-3
   (read-prefix "with a 'rare weapon that fires homing darts with customized sprite, damage, speed, and range.")


   'size-1
   (read-prefix "with a \"Grow Power-up\" item that makes you bigger and customize the icon.")
   'size-2
   (read-prefix "with an item that makes you shrink, name it and customize the icon.")
   'size-3
   (read-prefix "with both grow powerups and shrink powerups.")

   
   'health-1
   (read-prefix "with a \"Health Power-up\" item that increases your health. Customize the icon and make it respawnable.")
   'health-2
   (read-prefix "with a \"Max Health Power-up\" item that sets your health to 100. Customize the icon and the rarity.")
   'health-3
   (read-prefix "with 2 health items: the first one should increase your health, the second one should restore all your health. Make custom icons for both.")


   'boost-1
   (read-prefix "with a \"Damage Boost\" item that temporarily increases the damage of your weapon and customize the icon.")
   'boost-2
   (read-prefix "with a \"Speed Boost\" item that temporarily boosts your speed and customize the icon.")
   'boost-3
   (read-prefix "that has both a Damage and a Speed Boost defined items.")


   'shield-1
   (read-prefix "that has an item that increases your shield by 50.")
   'shield-2
   (read-prefix "that has an item that recovers your shield to 100.")
   'shield-3
   (read-prefix "that has both a Shield and Max Shield defined items.")
   

   'force-field-1
   (read-prefix "with a \"Force Field\" item.")
   'force-field-2
   (read-prefix "with a \"Force Field\" item that has a custom duration and customize the icon.")
   'force-field-3
   (read-prefix "with a \"Force Field\" item that has a custom icon. Customize the duration and allow the player to shoot out of it.")

   
   'level-design-1
   (read-prefix "with a forest background that has world objects.")
   'level-design-2
   (read-prefix "with a forest background filled with high definition trees.")
   'level-design-3
   (read-prefix "with a pink background that has two randomly-colored types of trees in high definition.")
   'level-design-4
   (read-prefix "with 3 world objects with customized position, tile, size, and/or hue.")

   
   ))