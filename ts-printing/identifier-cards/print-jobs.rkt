#lang racket

(require "./main.rkt")


(define (battlearena-avengers->Desktop)
  (begin-identifier-job "battlearena-avengers"
                        (battlearena-avengers)))


(define (battlearena-fortnite->Desktop)
  (begin-identifier-job "battlearena-fortnite"
                        (battlearena-fortnite)))

(define (battlearena-starwars->Desktop)
  (begin-identifier-job "battlearena-starwars"
                        (battlearena-starwars)))

(define (survival-minecraft->Desktop)
  (begin-identifier-job "survival-minecraft"
                        (survival-minecraft)))

(define (survival-pokemon->Desktop)
  (begin-identifier-job "survival-pokemon"
                        (survival-pokemon)))

(define (assets->Desktop)
  (begin-asset-job "asset-cards"
                   (battlearena-fortnite)
                   (battlearena-avengers)
                   (battlearena-starwars)
                   (survival-minecraft)
                   (survival-pokemon)))

(define (all->Desktop)
  (battlearena-avengers->Desktop) 
  (battlearena-fortnite->Desktop) 
  (battlearena-starwars->Desktop)
  (survival-minecraft->Desktop)
  (survival-pokemon->Desktop)
  (assets->Desktop))


#;
(all->Desktop)



