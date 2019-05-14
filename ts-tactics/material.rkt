#lang racket

(provide add-materials
         sub-materials)

(require "./base.rkt")

(define/contract (add-materials ms1 ms2)
  (-> (listof material?) 
      (listof material?)  
      (listof material?))
  
  (collapse-materials (append ms1 ms2))  
  )

(define/contract (sub-materials ms1 ms2)
  (-> (listof material?) 
      (listof material?)  
      (listof material?))
  
  (collapse-materials (append ms1 (map material-negate ms2))))

(define/contract (material-negate ms)
  (-> (listof material?) 
      (listof material?))

  (map 
    (lambda (m) (struct-copy material m
                             [quantity (- (material-quantity m))])) 
    ms))


(define/contract (collapse-materials ms)
  (-> (listof material?) 
      (listof material?))

  (define temp (hash))
     
  (for ([m ms])
    (set! temp 
      (hash-update temp 
                   (material-name m)
                   (lambda (q)
                     (+ q (material-quantity m)))
                   0))) 

  (hash->material-list temp))

(define (hash->material-list h)
  (map material
       (hash-keys h)
       (hash-values h)))


(module+ test
  (require rackunit) 

  (check-equal?
    (collapse-materials 
      (list (material 'index-card 5)
            (material 'index-card 2))) 

    (list (material 'index-card 7)))

  (check-equal?
    (collapse-materials 
      (list (material 'index-card 5)
            (material 'index-card -2))) 

    (list (material 'index-card 3))))




