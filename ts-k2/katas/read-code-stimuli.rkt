#lang racket

(provide stimuli)

(require ts-kata-util/katas/main)

(define (read-template noun)
  (read (~a "Write code to make a " noun ".")))

(define stimuli
  (list

   'fish-1
   (read-template "red fish")

   'fish-2
   (read-template "blue fish")

   'fish-3
   (read-template "red fish beside a blue fish")

   'fish-4
   (read-template "red fish above a blue fish")

   'fish-5
   (read-template "red fish above a blue fish -- with a green fish beside them")

   'hero-0
   (read-template "spritesheet for Blackwidow")

   'hero-1
   (read-template "spritesheet for Ironman")

   'hero-2
   (read-template "spritesheet for Gamora")

   'hero-3
   (read-template "game where Gamora is the hero")

   'hero-4
   (read-template "game where Ironman is the hero")

   'hero-5
   (read-template "game where Blackwidow is the hero")

   'hero-6
   (read-template "game where Blackwidow is the hero, and Gamora and Ironman are enemies.")

   'hero-7
   (read-template "game where Ironman is the hero, and Gamora and Blackwidow are enemies.")

   'hero-8
   (read-template "game where Ironman is the hero, and Ironman is also an enemy.")

   'hero-9
   (read-template "game where Ironman is the hero, and there are three Ironman enemies too.")

   'hero-10
   (read-template "game where Gamora is the hero, and there are four Gamora enemies too.")
   ))

