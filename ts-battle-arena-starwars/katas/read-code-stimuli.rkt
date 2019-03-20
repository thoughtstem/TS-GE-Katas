#lang racket

(provide stimuli)

(require ts-kata-util/katas/main)

(define stimuli
  (list

   ; ==== SKINNED STIMULI ====
   ; Only include stimuli that are different from the base katas
   
   'hello-world-1
   (read "Make a basic Star Wars game")

   
   'avatar-1
   (read "Make a game that has a custom rebel.")

   'avatar-2
   (read "Make a game that has a predifined sprite as your custom rebel.")

   'avatar-3
   (read "Make a game that has a custom rebel with a custom sprite and 20 speed.")

   'avatar-3
   (read "Make a game that has a custom rebel with a custom sprite, 20 speed, and 5 item slots.")

   
   'enemy-1
   (read "Make a game that has a custom imperial.")

   'enemy-2
   (read "Make a game that has 10 random imperials.")

   'enemy-3
   (read "Make a game that has 5 imperials with 'medium ai and custom health and shield.")

   'enemy-4
   (read "Make a game that has 5 Storm Troopers with 'easy ai and 1 Boba Fett with 'hard ai.")

   
   'enemy-weapon-1
   (read "Make a game that has a custom imperial and give it a blaster that shoots yellow lasers.")

   'enemy-weapon-2
   (read "Make a game that has a custom imperial with a custom sprite and a red lightsaber.")

   'enemy-weapon-3
   (read "Make a game that has a custom imperial with a custom sprite and a double lightsaber.")


   'background-1
   (read "Make a game that has a random colored planet.")

   'background-2
   (read "Make a game that uses a predefined image as the planet.")

   'background-3
   (read "Make a game that has a fully customized planet.")

   
   'sword-armor-1
   (read "Make a game that has a collectible Lightsaber Armor.")

   'sword-armor-2
   (read "Make a game that has a fully customized Lightsaber Armor.")

   'sword-armor-3
   (read "Make a game that has an enemy with a lightsaber and armor to protect your rebel.")


   ; ==== STIMULI FOR NEW KATAS ====
   
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

   
   'blaster-armor-1
   (read "Make a game that has a collectible Blaster Armor.")

   'blaster-armor-2
   (read "Make a game that has a fully customized Blaster Armor.")

   'blaster-armor-3
   (read "Make a game that has an enemy with a blaster and and armor to protect your rebel.")


   
   ))