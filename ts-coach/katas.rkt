#lang racket

(provide meta-katas
         teaching-katas
         fundamentals-katas)

(require ts-kata-util/katas/main
         (rename-in ts-fundamentals/katas
                    [katas fundamentals-katas])
         "./katas/meta.rkt"
         "./katas/teaching.rkt")



