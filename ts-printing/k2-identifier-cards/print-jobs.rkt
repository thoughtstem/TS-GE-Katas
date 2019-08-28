#lang racket

(require "./main.rkt"
         "../challenge-cards/main.rkt"
         ts-kata-util/katas/main
         (only-in pict text))


#|(define (farm->Desktop)
  (local-require ts-k2-farm-summer-camp-2019/katas)

  (define farm-foods (filter-by-response-lang 'k2/lang/farm/foods farm))

  (define farm-coins (filter-by-response-lang 'k2/lang/farm/coins farm))

  (define farm-enemies (filter-by-response-lang 'k2/lang/farm/enemies farm))

  (begin-k2-identifier-job  "k2-farm-identifiers"  
                            (k2/lang/farm/foods
                              [FILTER-BY-COLLECTION farm-foods])
                            (k2/lang/farm/coins
                              [FILTER-BY-COLLECTION farm-coins])
                            (k2/lang/farm/enemies
                              [FILTER-BY-COLLECTION farm-enemies])))

(define (sea->Desktop)
  (local-require ts-k2-sea-summer-camp-2019/katas)

  (define sea-foods
    (filter-by-response-lang 'k2/lang/sea/foods 
      sea))

  (define sea-friends
    (filter-by-response-lang 'k2/lang/sea/friends 
      sea))

  (define sea-enemies
    (filter-by-response-lang 'k2/lang/sea/enemies 
      sea))

  (begin-k2-identifier-job  "k2-sea-identifiers"  
                            (k2/lang/sea/foods
                              [FILTER-BY-COLLECTION sea-foods])
                            (k2/lang/sea/friends
                              [FILTER-BY-COLLECTION sea-friends])
                            (k2/lang/sea/enemies
                              [FILTER-BY-COLLECTION sea-enemies])))


(define (zoo->Desktop)
  (local-require ts-k2-zoo-summer-camp-2019/katas)

  (define zoo-foods   (filter-by-response-lang 'k2/lang/zoo/foods zoo))
  (define zoo-friends (filter-by-response-lang 'k2/lang/zoo/friends zoo))
  (define zoo-coins   (filter-by-response-lang 'k2/lang/zoo/coins zoo))

  (begin-k2-identifier-job  "k2-zoo-identifiers"  
                            (k2/lang/zoo/foods
                              [FILTER-BY-COLLECTION zoo-foods])
                            (k2/lang/zoo/friends
                              [FILTER-BY-COLLECTION zoo-friends])
                            (k2/lang/zoo/coins
                              [FILTER-BY-COLLECTION zoo-coins])))

(define (hero->Desktop)
  (local-require ts-k2-hero-summer-camp-2019/katas)

  (define hero-basic  (filter-by-response-lang 'k2/lang/hero/basic hero))
  (define hero-powers (filter-by-response-lang 'k2/lang/hero/powers hero))

  (begin-k2-identifier-job  "k2-hero-identifiers"  
                            (k2/lang/hero/basic
                              [FILTER-BY-COLLECTION hero-basic])
                            (k2/lang/hero/powers
                              [FILTER-BY-COLLECTION hero-powers])))


(define (all->Desktop)
  (hero->Desktop)
  (zoo->Desktop)
  (sea->Desktop)
  (farm->Desktop))


(all->Desktop)
|#

