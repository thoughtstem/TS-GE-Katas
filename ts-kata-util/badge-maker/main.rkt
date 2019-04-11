#lang racket

(provide survival-badges
         k2-superhero-badges
         battle-arena-badges)

(require "./icons/main.rkt")
(require "./colors/pallets.rkt")
(require "./styles/hexagon.rkt")
(require "./util.rkt")

(define survival-badges
  (hexagon-triad potion sword carrot
                 pallet3-yellow pallet3-red pallet3-green))

(define battle-arena-badges
  (hexagon-triad double-swords mace coins
                 pallet3-green pallet3-blue pallet3-yellow))

(define k2-superhero-badges
  (hexagon-triad play thor superhero
                 pallet2-red pallet2-yellow pallet2-blue))


(module+ test
  survival-badges
  battle-arena-badges
  k2-superhero-badges
  )
