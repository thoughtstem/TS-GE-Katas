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

  (begin-asset-job "core-asset-cards"         ;circle
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

  #;(begin-asset-job "base-asset-cards"
                   (battlearena
                     [LANGUAGE-COLOR "black"]
                     [LANGUAGE-SHAPE 'square])
                   (survival
                     [LANGUAGE-COLOR "black"]
                     [LANGUAGE-SHAPE 'star])
                   (adventure
                     [LANGUAGE-COLOR "black"]
                     [LANGUAGE-SHAPE 'triangle]))

  (begin-asset-job "battlearena-asset-cards"   ;square or light red box
                   (battlearena
                     [LANGUAGE-COLOR "black"]
                     [LANGUAGE-SHAPE 'square])
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
                   

  (begin-asset-job "survival-asset-cards"       ;star or light green box
                   (survival
                     [LANGUAGE-COLOR "black"]
                     [LANGUAGE-SHAPE 'star])
                   (survival-minecraft
                     [LANGUAGE-COLOR "green"]
                     [LANGUAGE-SHAPE 'star])
                   (survival-pokemon
                     [LANGUAGE-COLOR "blue"]
                     [LANGUAGE-SHAPE 'star])
                   )

  (begin-asset-job "adventure-asset-cards"     ;triangle or light blue box
                   (adventure
                     [LANGUAGE-COLOR "black"]
                     [LANGUAGE-SHAPE 'triangle])
                   (adventure-harrypotter
                     [LANGUAGE-COLOR "cyan"]
                     [LANGUAGE-SHAPE 'triangle])
                   (adventure-mario
                     [LANGUAGE-COLOR "magenta"]
                     [LANGUAGE-SHAPE 'triangle])
                   )

  )

(assets->Desktop)
