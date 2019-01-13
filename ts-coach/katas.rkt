#lang racket

(provide my-katas)

(require ts-kata-util/katas/main
         ts-fundamentals/katas)


(define my-katas
  (merge-collections
   (kata-collection
    (list
     (set-id 'meta-1
             (within #:minutes 5
                     (teachback #:in core-values-kata
                                #:with-materials
                                '(whiteboard))))
     ))
   
    ;Many katas begin by pulling in examples
    ; from some TS-Language
    (lang->kata-collection 'fundamentals)

    ;You can also import katas from other kata collections
    (kata-collection
      (list core-values-kata))))


