#lang racket

(provide stimuli)

(require ts-kata-util/katas/main)

(define (read-prefix s)
  (read (~a "Code a game with " s)))

(define stimuli
  (list

   ; ==== SKINNED STIMULI ====
   ; Only include stimuli that are different from the base katas
   
   'hello-world-1
   (read "Code a basic Star Wars game")

   
   'avatar-1
   (read-prefix "a rebel.")
   'avatar-2
   (read-prefix "Yoda as the rebel.")
   'avatar-3
   (read-prefix "a fast-moving Obiwan rebel.")
   'avatar-4
   (read-prefix "a fast-moving Obiwan rebel, a large backpack, and double the health and shield values.")

   
   'enemy-1
   (read-prefix "an imperial.")
   'enemy-3
   (read-prefix "several moderatly intelligent Darth Maul imperials with double health and shield.")
   'enemy-4
   (read-prefix "6 imperials: 5 weak with low intelligence, and 1 strong with high intelligence. Choose your own sprites.")


   'enemy-weapon-2
   (read-prefix "Darth Vader using a lightsaber of a custom color.")
   'enemy-weapon-3
   (read-prefix "Darth Maul using a double lightsaber.")


   'background-1
   (read-prefix "that has a random colored planet.")
   'background-2
   (read-prefix "that uses a predefined image as the planet.")
   'background-3
   (read-prefix "that has a fully customized planet.")

   
   'sword-armor-1
   (read-prefix "that has a collectible Lightsaber Armor.")
   'sword-armor-2
   (read-prefix "that has a fully customized Lightsaber Armor.")
   'sword-armor-3
   (read-prefix "that has an enemy with a lightsaber and armor to protect your rebel.")


   ; ==== STIMULI FOR NEW KATAS ====
   
   'lightsaber-1
   (read-prefix "a lightsaber.")
   'lightsaber-2
   (read-prefix "a lightsaber that has a custom icon and high rarity.")
   'lightsaber-3
   (read-prefix "a powerful, custom-colored lightsaber with high rarity and a custom icon.")


   'blaster-2
   (read-prefix "a blaster that has a custom icon and high rarity.")
   'blaster-3
   (read-prefix "a powerful, fast, long-ranged blaster that can go through 3 imperials with one shot. Add 5 imperials.")


   'lightsaber-droid-1
   (read-prefix "a lightsaber droid.")
   'lightsaber-droid-3
   (read-prefix "a lightsaber droid that uses a custom-colored, powerful, fast-moving lightsaber.")


   'blaster-droid-2
   (read-prefix "a blaster droid that shoots multiple, powerful, custom-colored energy blasts.")   

   
   'blaster-armor-1
   (read-prefix "that has a collectible Blaster Armor.")
   'blaster-armor-2
   (read-prefix "that has a fully customized Blaster Armor.")
   'blaster-armor-3
   (read-prefix "that has an enemy with a blaster and and armor to protect your rebel.")

   
   ))