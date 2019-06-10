#lang at-exp racket

(provide define-assets-from
         define-icons-from)

(require (for-syntax 2htdp/image (only-in scribble/manual image para))
         (for-syntax racket))

(define-for-syntax (get-png-names-from path)
  (map
   (compose
    string->symbol
    (curryr string-replace ".png" ""))
   (filter (curryr string-suffix? ".png")
           (map ~a (directory-list path)))))

(define-syntax (define-assets-from stx)
  (define root (apply build-path (reverse
                                  (rest (reverse (explode-path (syntax-source stx)))))))

  (define path (second (syntax->datum stx)))

  (define ids (get-png-names-from (build-path root path)))

  (define (define-asset i)
    (define p (build-path root path (~a i ".png") ))
    `(begin
       (require (for-doc scribble/manual))
       (provide
        (thing-doc ,i image?
                   @{@para[,(string-titlecase (string-replace (~a i) "-" " "))]{ Image}
                     @image[,p]}
                   ))

       #;
       (displayln (~a "Defining assets " ',i))

       
       (define ,i
         (bitmap/file ,p))))

  (datum->syntax stx
   `(begin
      (require 2htdp/image scribble/srcdoc)

      
      ,@(map define-asset ids))))

(define-syntax (define-icons-from stx)
  (define root (apply build-path (reverse
                                  (rest (reverse (explode-path (syntax-source stx)))))))

  (define path (second (syntax->datum stx)))

  (define ids (map (compose string->symbol
                            (curryr ~a "-icon"))
                   (get-png-names-from (build-path root path))))

  (define (define-asset i)
    (define i-no-icon (string-replace (~a i) "-icon" "" #:all? #f))
    (define p (build-path root path (~a i-no-icon ".png") ))
    `(begin
       (require (for-doc scribble/manual))
       (provide
        (thing-doc ,i image?
                   @{@para[,(string-titlecase (string-replace (~a i) "-" " "))]{ Image}
                     @image[,p]}
                   ))

       #;
       (displayln (~a "Defining icons " ',i))

       
       (define ,i
         (bitmap/file ,p))))

  (datum->syntax stx
   `(begin
      (require 2htdp/image scribble/srcdoc)

      
      ,@(map define-asset ids))))



