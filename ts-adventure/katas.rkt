#lang racket

(provide adventure-katas
         adventure-proto-katas)

(require ts-kata-util/katas/main
         "./katas/read-code-stimuli.rkt"
         "./katas/read-code-tips.rkt")

(define adventure-proto-katas
  (lang->kata-collection 'adventure))

(define adventure-katas
  (apply fill-in-tips
         (apply fill-in-stimuli adventure-proto-katas stimuli)
         tips))

(define-sub-collections adventure-katas
  hello-world-katas
  )
