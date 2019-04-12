#lang racket

(provide save-pict
         define-badges
         collect-badges)

(require pict)

(define (save-pict the-pict name kind)
  (define bm (pict->bitmap the-pict))
  (send bm save-file name kind))


(require (for-syntax racket/list)
         (for-syntax (only-in scribble/manual image para)))


(define-syntax-rule (define-badges id expr)
  (begin
    (require scribble/srcdoc)

    (provide 
      (thing-doc id pict?  (id)))

    (define id expr)) )


(define-syntax-rule (collect-badges id (def triad-id triad-def) ...)
  (begin
    (def triad-id triad-def)
    ...

    (provide id)
    (define id (list triad-id ...))))






