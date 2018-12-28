#lang scribble/manual

@(require racket
          ts-kata-util
          2htdp/image)

@(provide camp-jam-kata
          COLOR-BAR
          ADD-STAR
          ADD-HEART
          DOLLAR)

@(define COLOR-BAR (image "scribblings/imgs/color-bar.png"
                          #:scale .5))
@(define ADD-STAR (image "scribblings/imgs/star-sticker.png"
                          #:scale .5))
@(define ADD-HEART (image "scribblings/imgs/extra-life.png"
                          #:scale .5))

@(define DOLLAR (image "scribblings/imgs/ts-dollar.png"
                       #:scale .15))

@(define (dollars (n 1))
   (map (thunk* DOLLAR) (range n)))

@(define (camp-jam-kata #:document-level (level subsubsection)
                        #:difficulty (difficulty 'bronze)
                        #:title (title "Avatar")
                        #:time-limit (time-limit 10)
                        #:dollars    (num-dollars 1)
                        #:health-bar (health-bar empty-image)
                        #:review/introduce (review-introduce "concepts to review...")
                        #:extra-dollars-for (extra-dollars-for "helping teammates...")
                        . body)

   @kata[#:document-level level
         #:difficulty    difficulty
         #:title title
         #:time-limit time-limit]{

 @(dollars num-dollars)

 @health-bar
  
 @side-note["Review/Introduce" review-introduce]

 @side-note["Extra Dollars for" extra-dollars-for]
                               
 @body
 })
