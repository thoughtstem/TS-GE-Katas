lang scribble/manual

@(require racket
          ts-kata-util
          2htdp/image)

@(provide game-jam-kata
          DOLLAR
          META-KATA
          AVATAR-KATA
          COIN-KATA
          FOOD-KATA
          ENEMY-KATA
          CRAFTER-KATA
          side-note
          to-earn-this-meta-kata
          to-earn-this-rubric-kata
          to-earn-this-code-kata)

@(define META-KATA    (circle 10 'outline 'black))
@(define AVATAR-KATA  (circle 10 'solid   'orange))
@(define COIN-KATA    (circle 10 'solid   'green))
@(define FOOD-KATA    (circle 10 'solid   'pink))
@(define ENEMY-KATA   (circle 10 'solid   'black))
@(define CRAFTER-KATA (circle 10 'solid   'blue))

@(define DOLLAR (image "scribblings/imgs/ts-dollar.png"
                       #:scale .15))

@(define (dollars (n 1))
   (map (thunk* DOLLAR) (range n)))




@(define (student-should-know-difference-between . things)
  (define (show-thing t)
    (item (bold (first t)) ": "
          (second t)))
  
  (list
   (para "Students should be able to recite the following definitions from memory:")
   (apply itemlist (map show-thing things))))



  (list
   (para "Students should be able to translate any sentence of this type:")
   (para (italic sentence))
   (para "To corresponding code of this type:")
   (show-kata-code lang kata-code-name)))

@(define (to-earn-this-code-kata #:english    sentence
                                #:code       kata-code-name
                                #:lang       lang
                                #:badge-type badge-type)

  (list
   (para "To earn this Kata " badge-type  " students should be able to translate any sentence of this type:")
   (para (italic sentence))
   (para "To corresponding code of this type:")
   (show-kata-code lang kata-code-name)))


@(define (to-earn-this-rubric-kata #:badge-type    badge-type
                                  #:game-element  game-element
                                  #:elements-list elements-list
                                  #:points-list   points-list)

  (list
   (para "To earn this Kata " badge-type  " students should be able to recite
the amount of points they get from having a custom " game-element " in their game.")
   (para (bold game-element " points:"))
   (map show-rubric elements-list points-list)))


@(define (show-rubric element points)
  (para "* " element " - "
        (bold (number->string points)
              (if (= points 1)
                  " point."
                  " points."))))


@(define (to-earn-this-meta-kata   #:badge-type         badge-type
                                  #:learning-objective learning-objective
                                  #:objectives         [l '()]
                                  )

  (list
   (para "To earn this Kata " badge-type  " students should be able to recite " learning-objective)
   (map list-points l)))

@(define (list-points l)
  (para "* " l))


@(define difficulties
  (hash 'air    (text "AIR" 24 'cyan)
        'stone  (text "STONE" 24 'gray)
        'bronze (text "BRONZE" 24 'orange)
        'silver (text "SILVER" 24 'darkgray)
        'gold   (text "GOLD" 24 'gold)
        'platnum   (text "PLATNUM" 24 'blue)))


@(define (kata #:document-level (level subsubsection)
              #:difficulty (difficulty 'bronze)
              #:title (title "Avatar")

              #:time-limit (time-limit 10)
              . body)

  (define (render-difficulty d)
    (string-titlecase (~a d))
    
    ;Not working
    #;(if (hash-has-key? difficulties d)
        (hash-ref difficulties d)
        (string-titlecase (~a d))))

  (list
   
   (level 
          (~a (render-difficulty difficulty)
              " "
              title
              " Kata "
              "(" time-limit " minutes)"))
   body))

@(define (side-note main . texts)
   @margin-note{@bold{main} @texts})

@(define (game-jam-kata #:document-level (level subsubsection)
                        #:difficulty (difficulty 'air)
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

