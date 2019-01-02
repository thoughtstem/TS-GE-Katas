#lang scribble/manual

@(require racket
          ts-kata-util
          2htdp/image)

@(provide game-jam-kata
          DOLLAR
          META-KATA
          AVATAR-KATA)

@(define META-KATA     (circle 10 'outline 'black))
@(define AVATAR-KATA   (circle 10 'solid   'orange))

@(define DOLLAR (image "scribblings/imgs/ts-dollar.png"
                       #:scale .15))

@(define (dollars (n 1))
   (map (thunk* DOLLAR) (range n)))

@(define (game-jam-kata #:document-level (level subsubsection)
                        #:badge-type     (badge-type META-KATA)
                        #:difficulty (difficulty 'bronze)
                        #:title (title "???")
                        #:time-limit (time-limit 10)
                        #:dollars    (num-dollars 1)
                        #:review/introduce (review-introduce #f)
                        #:extra-dollars-for (extra-dollars-for #f)
                        . body)

   @kata[#:document-level level
         #:difficulty    difficulty
         #:title title
         #:time-limit time-limit]{

 @(dollars num-dollars)
  
 @(if review-introduce
      @side-note["Review/Introduce" review-introduce]
      "")

 @(if extra-dollars-for
      @side-note["Extra Dollars for" extra-dollars-for]
      "")
                               
 @body
 }



   )

