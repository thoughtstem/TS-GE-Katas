#lang racket

(provide def-icons
         def-icon)

(require (for-syntax racket))
(define-syntax (def-icon stx)
  (define name (syntax->datum
                (second (syntax->list stx))))
  (define png (~a name ".png"))

  (define load-func (syntax->datum
                     (third (syntax->list stx))))
  (datum->syntax stx
                 `(begin
                    (provide ,name)
                    (define ,name (scale 
                                   (,load-func ,png)
                                   0.1)))))



(define-syntax (def-icons stx)
  
  (define dir (syntax->datum
               (second (syntax->list stx))))

  (define ps (explode-path
             (string->path (~a (syntax-source stx)))))

  (define p (apply build-path (take ps (sub1 (length ps)))))

  
  (define load-func (syntax->datum
                     (third (syntax->list stx))))
 
  (define (strip-png s)
    `(def-icon
       ,(string->symbol
         (string-replace s ".png" ""))
       ,load-func))

  (datum->syntax stx
   `(begin
      ,@(map strip-png
             (map path->string
                  (directory-list (build-path p dir)))))))