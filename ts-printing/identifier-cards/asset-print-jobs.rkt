#lang racket

(require "./main.rkt"
         ts-kata-util/katas/main)

(define (assets->Desktop)
  ;These extra cards come from k2 langs.
  ;  But the k2 langs don't organize the assets by sub lang.  Should we reorganize them??

  (begin-asset-job "extra-assets-cards"
                   ;TODO: FIx this...
                   ; Buuut: Does that require reorging all the lang assets?   
                   (k2/assets/all
                      [ASSET-PATH 'k2/assets/all]
                      [LANGUAGE-COLOR "black"]))

  (begin-asset-job "asset-cards"
                   (battlearena-fortnite
                     [LANGUAGE-COLOR "red"])
                   (battlearena-avengers
                     [LANGUAGE-COLOR "orange"])
                   (battlearena-starwars
                     [LANGUAGE-COLOR "yellow"])
                   (survival-minecraft
                     [LANGUAGE-COLOR "green"])
                   (survival-pokemon
                     [LANGUAGE-COLOR "blue"])))

(assets->Desktop)
