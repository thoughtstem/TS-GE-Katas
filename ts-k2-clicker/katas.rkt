#lang racket

(provide katas)

(require 
  ts-kata-util
  ts-kata-util/katas/main
  ts-kata-util/katas/ratchet
  ts-kata-util/inline-stimuli

  syntax/parse/define
  (for-syntax racket/syntax))



(define proto-katas
  (merge-collections
    (lang->kata-collection 'clicker-farm-collect)))

(define the-stimuli 
  (extract-stimuli clicker-farm-collect/examples))

(define katas-with-stimuli
  (apply fill-in-stimuli proto-katas the-stimuli))

(define katas 
  #;
  (kata-collection '())  

  (katas-map add-ratchet-output-to-response katas-with-stimuli)) 

