#lang racket

(provide stimuli)

(require ts-kata-util/katas/main)

(define (read-prefix s)
  (read (~a "Code a game " s)))

(define stimuli
  (list
   ;Initial stimuli
   'hello-world-1
   (read "Make a Harry Potter game.")
   
   ;Wizard stimuli
   'avatar-1
   (read-prefix "with a wizard. Customize the sprite and the speed.")

   'avatar-2
   (read-prefix "with a strong, fast, Harry Potter wizard.")

   'avatar-3
   (read-prefix "with a wizard and an intro cutscene. Give the wizard a sprite and make them fast. Customize the cutscene to have a sprite and some text.")

   'avatar-4
   (read-prefix "with a wizard and a 2 part intro cutscene: the first with some text, and the second with a sprite and more text.")

   ;Potion stimuli
   'food-1
   (read-prefix "with a potion. Customize the name, the amount of potions in-game, and the health gained.")

   'food-2
   (read-prefix "with 2 custom potions. Give the potions different colors, different health regained, and prevent one of the potions from respawning.")

   'food-3
   (read-prefix "with a potion and a half health wizard. Make the potion restore half of the wizard's health, give it a yellow potion sprite, and give it a cutscene with a sprite and some text.")

   'food-4
   (read-prefix "with a potion that doesn't respawn, a recipe to make the potion, and 10 ingredients for the recipie.")

   'food-5
   (read-prefix "with a potion, a recipe, and an NPC. Give the NPC dialog and a quest to craft the potion.")

   ;Loot quest stimuli
   'loot-quest-1
   (read-prefix "with an NPC that has a loot quest, and a deatheater that drops the stolen item.")

   'loot-quest-2
   (read-prefix "with a loot quest NPC, a stolen cat NPC, a high damage spell, and a deatheater that drops the stolen cat. Give both NPCs dialog.")

   'loot-quest-3
   (read-prefix "with an loot quest NPC, a spell, and a deatheater that drops the stolen food. Give the player a reward after completing the quest.")

   'loot-quest-4
   (read-prefix "with a spell, a loot quest NPC, and a deatheater that drops a stolen pumpkin. Give the quest completion dialog.")

   'loot-quest-5
   (read-prefix "with a loot quest NPC and a deatheater that drops a stolen flying book. Make the flying book spawn a cutscene on pickup.")

   ;NPC stimuli
   'npc-1
   (read-prefix "with a wizard and an NPC. The NPC will follow the wizard in a pre-set tile.")

   'npc-2
   (read-prefix "with a wizard, a polite and NPC, and a rude NPC. Give the NPCs names and multiple lines of dialog.")

   'npc-3
   (read-prefix "with a wizard and an NPC. Give the wizard and NPC dialog and responses.")

   'npc-4
   (read-prefix "with a wizard and 2 NPCs. Give the wizard and NPCs random dialog and responses.")
   
   'npc-5
   (read-prefix "with a wizard and an NPC that has a quest to fetch a wand. Give the NPC new dialog after the quest is complete.")

   ;Spell stimuli
   'weapon-1
   (read-prefix "with a spell. Customize the name, speed, damage, and rarity of the spell.")

   'weapon-2
   (read-prefix "with an spell, a wand, and 5 deatheaters. Make the wand very rare and high damage. Make the spell shoot multiple fire darts at a time.")

   'weapon-3
   (read-prefix "with a hologram shooter spell, a wizard, and 5 deatheaters. Make the spell fire a random sprite with high damage but slow speed and short range.")

   'weapon-4
   (read-prefix "with 2 spells, a wizard, and 10 deatheaters. Give the spells high damage and pickup cutscenes.")

   'weapon-5
   (read-prefix "with a wand and a deatheater. Give the wand a cutscene on pickup and drop. Give the deatheater a cutscene on despawn with a downward facing sprite and a message.")
   
 ))