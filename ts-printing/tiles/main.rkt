#lang racket

(require ratchet
         "../main.rkt"
         (submod k2/lang/hero/powers ratchet))


(define tiles
  (tangeable-tiles hero-lang))

;Kind of works for https://www.boardgamesmaker.com 
;  But need to make them bigger, and the meta+border didn't fit
;  Maybe a different product at bgm, or just drop the meta+border
(for ([t tiles]
      [i (in-naturals)])
  (save-pict t (~a "test-" i ".png") 'png))

