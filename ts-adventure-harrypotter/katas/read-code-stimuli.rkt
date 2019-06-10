#lang racket

(provide stimuli)

(require ts-kata-util/katas/main)

(define (read-prefix s)
  (read (~a "Code a game " s)))

(define stimuli
  (list
   ;Initial stimuli
   'hello-world-1
   (read "Code a basic Harry Potter game.")
   
   ;Wizard stimuli
   'avatar-1
   (read-prefix "with a fast Harry Potter wizard.")

   'avatar-2
   (read-prefix "with a strong, fast, Harry Potter wizard.")

   'avatar-3
   (read-prefix "with a fast wizard and an intro cutscene. Customize the cutscene to have a sprite and some text.")

   'avatar-4
   (read-prefix "with a wizard and an intro cutscene. Customize the cutscene with 2 pages, include sprites and text.")

   ;Potion stimuli
   'food-1
   (read-prefix "with several strong healing potions.")

   'food-2
   (read-prefix "with 2 types of potions: a common, green, weak healing potion; and a very rare, orange, powerful healing potion.")

   'food-3
   (read-prefix "with a wizard who starts at half health. Add a powerful yellow potion that spawns a cutscene on pickup. The cutscene includes the potion sprite and text.")

   'food-4
   (read-prefix "with several pumpkins and a cauldron that produces a powerful pumpkin potion.")

   'food-5
   (read-prefix "with an NPC and a cauldron that produces a carrot potion. Give the NPC dialog and a quest to brew that potion.")

   ;Loot quest stimuli
   'loot-quest-1
   (read-prefix "with an NPC who has a loot quest to retrieve their stolen item. Collect the item by defeating the deatheater who stole it.")

   'loot-quest-2
   (read-prefix "with an NPC who has a quest to retrieve their stolen talking cat from a deatheater. Include a high-damage spell.")

   'loot-quest-3
   (read-prefix "with an NPC who has a rewarded quest to retrieve their stolen food. Include a wand.")

   'loot-quest-4
   (read-prefix "with an NPC who has a quest to retrieve their stolen pumpkin. Add quest-complete dialog and a spell.")

   'loot-quest-5
   (read-prefix "with an NPC who has a quest to retrieve their stolen book. Add a pickup cutscene to the stolen book.")

   ;NPC stimuli
   'npc-1
   (read-prefix "a witch NPC who follows you. Give her a name and a specific tile location.")

   'npc-2
   (read-prefix "2 NPCs. Give both NPCs names and multiple lines of dialog.")

   'npc-3
   (read-prefix "with a wizard and a named NPC. Give the wizard 3 questions and the NPC 3 responses.")

   'npc-4
   (read-prefix "with a wizard and 2 NPCs. Give the wizard and NPCs random dialog and responses.")
   
   'npc-5
   (read-prefix "an NPC who has a quest to fetch their lost wand. Give the NPC new dialog after the quest is complete.")

   ;Spell stimuli
   'weapon-1
   (read-prefix "with a powerful, rare wand. Customize the name and the icon.")

   'weapon-2
   (read-prefix "with several deatheaters; a powerful, rare wand; and a red Fire Dart spell. The spell fires multiple darts at once.")

   'weapon-3
   (read-prefix "with a patronus spell and several deatheaters. The patronus spell creates an animal sprite with high damage but slow speed and short range.")

   'weapon-4
   (read-prefix "with 2 different spells and many deatheaters. Add pickup cutscenes to both spells.")

   'weapon-5
   (read-prefix "with a deatheater and a powerful wand that has pickup and drop cutscenes. Give the deatheater a creative death cutscene.")
   
 ))