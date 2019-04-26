#lang racket

(provide begin-k2-identifier-job
         EXTRA-META
         )

(require ratchet
         pict
         (only-in pict/code codeblock-pict)
         "../common.rkt")

;WHATS THIS FOR?  REPLACE IT
(define EXTRA-META (make-parameter #f))

(define (identifier->back-side im)
  (define p  (identifier-mapping-original im)) 

  (front-side 
    (scale-to-fit
      (double-size 
        (double-size 
          (pict->bitmap p)))
      200 200)))


(define (identifier->front-side im)
  (define id (identifier-mapping-main im)) 
 
  (back-side
    (scale 
      (codeblock-pict (~a id))
      3)))

(define (identifier->sides i)
  (list
    (identifier->front-side i) 
    (identifier->back-side i)))


(define (lang->Desktop v-lang folder-path)
  (define ims (visual-language-mappings v-lang))

  (list->folder (flatten
                  (map identifier->sides ims))
                folder-path))



(define-syntax-rule (begin-k2-identifier-job folder 
                      (lang [k v] ...) 
                      ...)
  (begin
    (VERSION git-hash)
    (HEIGHT 800)
    (WIDTH  800)
    (MARGIN 200)
    (FRONT-META-FUNCTION
      (lambda (i)
        (colorize
          (vc-append (default-meta i)
                     (text folder))
          "gray")))
    (define counter 0)

    (parameterize ([k v] ...
                   [STARTING-CARD-NUMBER counter])
      (lang->Desktop lang folder)
      (set! counter (+ counter 
                       (length 
                         (visual-language-mappings lang))))) 
    ...))

