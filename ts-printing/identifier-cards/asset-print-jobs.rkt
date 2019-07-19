#lang racket

(require "./main.rkt"
         ts-kata-util/katas/main)

(define (assets->Desktop)
  ;These extra cards come from k2 langs.
  ;  But the k2 langs don't organize the assets by sub lang.  Should we reorganize them??

  #;(begin-asset-job "extra-assets-cards"
                   (k2/assets/animal
                      [ASSET-PATH 'k2/assets/animal]
                      [LANGUAGE-COLOR "black"]))

  #;(begin-asset-job "core-asset-cards"         ;circle
                   (game-engine-rpg/lang/avatar-assets
                      [ASSET-PATH 'game-engine-rpg/lang/avatar-assets]
                      [LANGUAGE-COLOR "black"])
                   (game-engine-rpg/lang/assets
                      [ASSET-PATH 'game-engine-rpg/lang/assets]
                      [LANGUAGE-COLOR "black"])
                   (game-engine-rpg/lang/crafting
                      [ASSET-PATH 'game-engine-rpg/lang/crafting]
                      [LANGUAGE-COLOR "black"])
                   (game-engine-rpg/lang/weapon
                      [ASSET-PATH 'game-engine-rpg/lang/weapon]
                      [LANGUAGE-COLOR "black"])
                   )

  (begin-asset-job "battlearena-asset-cards"   ;square
                   
                   (battlearena-fortnite
                     [LANGUAGE-COLOR "red"]
                     [LANGUAGE-SHAPE 'square])
                   (battlearena-avengers
                     [LANGUAGE-COLOR "orange"]
                     [LANGUAGE-SHAPE 'square])
                   (battlearena-starwars
                     [LANGUAGE-COLOR "yellow"]
                     [LANGUAGE-SHAPE 'square])
                   )
                   

  #;(begin-asset-job "survival-asset-cards"       ;star
                   
                   (survival-minecraft
                     [LANGUAGE-COLOR "green"]
                     [LANGUAGE-SHAPE 'star])
                   (survival-pokemon
                     [LANGUAGE-COLOR "blue"]
                     [LANGUAGE-SHAPE 'star])
                   )

  #;(begin-asset-job "adventure-asset-cards"     ;triangle
                   
                   (adventure-harrypotter
                     [LANGUAGE-COLOR "cyan"]
                     [LANGUAGE-SHAPE 'triangle])
                   (adventure-mario
                     [LANGUAGE-COLOR "magenta"]
                     [LANGUAGE-SHAPE 'triangle])
                   )

  )

;(assets->Desktop)
