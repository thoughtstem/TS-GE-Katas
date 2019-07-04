#lang racket

(provide get-example-code
         get-example-names
         module->example-ids

         get-example-syntax
         fix-tabs

         GAME-JAM-VID)

(require scribble/base)



(define (fix-tabs s)

  ;Works perfectly... except it uses racket/gui/base, which fucks up Scribble...
  ;  Posted on the racket mailing list and Robby suggested a refactoring of racket/gui to separate text% from racket/gui/base
  ;Low hanging fruit anyone?
  #;(
  (define
    racket:text%
    (dynamic-require
     'framework
     'racket:text%))

  (define t (new racket:text%))
  (send t insert s 0)
  (send t tabify-all)
  (send t get-text)
  )

  s
  )


(define (remove-line-breaks str)
  (regexp-replace* #px"(#:\\S*)\\s*" str "\\1 "))

(define (syntax->program-string stx)
  (define lang
    (third (syntax->datum stx)))

  (string-append
   (~a "#lang " lang "\n\n")

   (string-join
     (map (compose (curryr substring 1)
                   fix-tabs
                   remove-line-breaks
                   (curryr pretty-format 50) ; original 50
                   ) 
         (drop (syntax->datum stx) 3) )
    "\n\n")

   ))

(module+ test

  (require rackunit)

  ;Be careful writing tests like these (or editing the ones below)
  ;  It's easy to confuse yourself with hidden whitespace...
  ;  (I speak from experience...) ~SF

  (check-equal?
"#lang racket

(circle 40 'solid 'red)"

   (syntax->program-string #'(module test racket
                              (circle 40 'solid 'red))))

  (check-equal?
"#lang racket

(battle-arena
  #:avatar (custom-avatar)
  #:background (custom-background))"

   (syntax->program-string #'(module test racket
                              (battle-arena
                               #:avatar (custom-avatar)
                               #:background (custom-background)))))

  (check-equal?
"#lang racket

(battle-arena
  #:avatar (custom-avatar #:sprite (monster))
  #:background (custom-background))"

   (syntax->program-string #'(module test racket
                              (battle-arena
                               #:avatar (custom-avatar #:sprite (monster))
                               #:background (custom-background)))))
  )


(define (module->example-ids m)
  (dynamic-require `(submod ,m syntaxes) #f)
  
  (define-values (raw-example-ids dont-care)
    (module->exports `(submod ,m syntaxes) ))

  (define example-ids
    (map first (rest (first raw-example-ids))))
  
  (define syntax-ids
    (filter
     (compose (curryr string-prefix? "syntax:") ~a)
     
     example-ids))

  syntax-ids)

(define (get-example-code pkg-name kata-name)
  (syntax->program-string
   (get-example-syntax pkg-name kata-name)))

(define (get-example-syntax pkg-name kata-name)
  (define stx
    (dynamic-require `(submod ,(string->symbol
                                (~a pkg-name "/examples"))
                              syntaxes)
                    (string->symbol
                      (~a "syntax:" kata-name))))
  stx)

(define (get-example-names pkg-name)
  (dynamic-require
    `(submod ,(string->symbol
                (~a pkg-name "/examples"))
             syntaxes)
    #f)

  (define-values (important not-important)
    (module->exports 
      `(submod 
        ,(string->symbol
          (~a pkg-name "/examples"))
        syntaxes)))

  (define exported-ids
    (map first
         (rest
          (first
           important))))

  (define example-ids
    (filter (compose (curryr string-prefix? "syntax:") ~a) exported-ids))

  (map (compose
        string->symbol
        second
        (curryr string-split ":")
        ~a)
       example-ids))

(define GAME-JAM-VID
  (hyperlink "https://youtu.be/rfH7itXF0BE"
             (bold "Game Jam Intro Video")))



#;(module+ test
    (get-example-code 'battle-arena 'avatar-3)

    (get-example-names 'battle-arena)
    )



