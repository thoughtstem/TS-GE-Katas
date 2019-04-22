#lang racket

(provide begin-identifier-job)

(require ratchet
         pict
         (only-in pict/code codeblock-pict)
         "./double-size.rkt"
         "../challenge-cards/main.rkt")

(define HEIGHT 600)
(define WIDTH HEIGHT)


;Use this design: https://www.makeplayingcards.com/design/custom-small-square-cards.html


(define bg 
  (colorize 
    (filled-rectangle WIDTH HEIGHT)
    "white"))

(define (front-side i)
  (cc-superimpose bg 
                  i))

(define (back-side i)
  (cc-superimpose bg
                  i)) 

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


(define (lang->folder v-lang folder-path)
  (define ims (visual-language-mappings v-lang))

  (list->folder folder-path
                (flatten
                  (map identifier->sides ims))))



(define (lang->Desktop v-lang folder-name)
  (lang->folder v-lang
                (build-path (find-system-path 'home-dir)
                             "Desktop"
                             folder-name)))

(define-syntax-rule (begin-identifier-job folder 
                      (lang [k v] ...) 
                      ...)
  (begin
    (define counter 0)

    (parameterize ([k v] ...
                   [STARTING-CARD-NUMBER counter]
                   [META-TRANSFORM (curryr colorize "gray")])
      (lang->Desktop lang folder)
      (set! counter (+ counter 
                       (length 
                         (visual-language-mappings lang))))) 
    ...))

