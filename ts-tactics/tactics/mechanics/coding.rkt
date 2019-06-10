#lang racket

(provide
  write-code
  blank?
  type-up
  hand-write
  erase-all-from
  remove-some-identifiers
  introduce-subtle-bugs
  is-bug-free?
  debug)

(require "../base/base.rkt"
         "./basic-things.rkt")

(define (introduce-subtle-bugs dest)
  (information-edit "introduce subtle bugs" 
                    (contents-of dest)))

(define (is-bug-free? info)
  (predicate "has no bugs"
             info))

(define (debug dest)
  (information-edit "remove bugs from" 
                    (contents-of dest)))

(define (remove-some-identifiers dest)
  (information-edit "remove some identifiers from" (contents-of dest)))

(define (hand-write info dest)
  (information-move "hand write" info dest))

(define (erase-all-from dest)
  (information-edit "erase all from" 
                    (contents-of dest)))


(define (blank? dest)
  (information-check "is blank" 
                     (contents-of dest)))


(define (type-up info dest)
  (information-move "type up" info dest))

(define (write-code)
  (body-action "write code"))

