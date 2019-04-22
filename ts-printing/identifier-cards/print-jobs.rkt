#lang racket

(require "./main.rkt"
         "../challenge-cards/main.rkt"
         (only-in pict text))

(require 
  (rename-in (only-in (submod k2/lang/hero/powers  ratchet) hero-lang)
             [hero-lang hero-lang-powers])
  (rename-in (only-in (submod k2/lang/hero/basic  ratchet) hero-lang)
             [hero-lang hero-lang-basic])

  (rename-in (only-in (submod k2/lang/zoo/friends  ratchet) zoo-lang)
             [zoo-lang zoo-lang-friends])
  (rename-in (only-in (submod k2/lang/zoo/coins  ratchet) zoo-lang)
             [zoo-lang zoo-lang-coins])
  (rename-in (only-in (submod k2/lang/zoo/foods  ratchet) zoo-lang)
             [zoo-lang zoo-lang-foods])
  (rename-in (only-in (submod k2/lang/sea/friends  ratchet) sea-lang)
             [sea-lang sea-lang-friends])
  
  (rename-in (only-in (submod k2/lang/sea/enemies  ratchet) sea-lang)
             [sea-lang sea-lang-enemies])

  (rename-in (only-in (submod k2/lang/sea/coins  ratchet) sea-lang)
             [sea-lang sea-lang-coins])
  (rename-in (only-in (submod k2/lang/sea/foods  ratchet) sea-lang)
             [sea-lang sea-lang-foods])

  (rename-in (only-in (submod k2/lang/farm/foods  ratchet) farm-lang)
             [farm-lang farm-lang-foods]) 
  (rename-in (only-in (submod k2/lang/farm/enemies  ratchet) farm-lang)
             [farm-lang farm-lang-enemies]) 
  (rename-in (only-in (submod k2/lang/farm/coins  ratchet) farm-lang)
             [farm-lang farm-lang-coins]))  


(begin-identifier-job  "k2-langs"  
                       (hero-lang-basic
                         [EXTRA-META (text "k2/lang/hero/basic")]) 
                       (hero-lang-powers
                         [EXTRA-META (text "k2/lang/hero/powers")]) 

                       (zoo-lang-friends
                         [EXTRA-META (text "k2/lang/zoo/friends")])
                       (zoo-lang-coins
                         [EXTRA-META (text "k2/lang/zoo/coins")])
                       (zoo-lang-foods
                         [EXTRA-META (text "k2/lang/zoo/foods")])
                       
                       (sea-lang-friends
                         [EXTRA-META (text "k2/lang/sea/friends")])
                       (sea-lang-enemies
                         [EXTRA-META (text "k2/lang/sea/enemies")])
                       (sea-lang-coins
                         [EXTRA-META (text "k2/lang/sea/coins")])
                       (sea-lang-foods
                         [EXTRA-META (text "k2/lang/sea/foods")])

                       (farm-lang-foods
                         [EXTRA-META (text "k2/lang/farm/foods")])
                       (farm-lang-enemies
                         [EXTRA-META (text "k2/lang/farm/enemies")])
                       (farm-lang-coins
                         [EXTRA-META (text "k2/lang/farm/coins")]))


