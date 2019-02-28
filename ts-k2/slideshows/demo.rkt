#lang slideshow

(require "../katas.rkt"
         "./common.rkt"
         ts-kata-util/katas/main)

(define ds (kata-collection-katas demo-games))
(define fs (kata-collection-katas fish))

(map ratchet-social-slide   ds)
(map ratchet-computer-slide fs)
(map ratchet-kata-slides    fs)

