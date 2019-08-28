#lang racket

(provide
  write-code
  blank?
  type-up
  hand-write
  erase-all-from
  erase-all-code-from
  erase-some
  remove-some-identifiers
  erase-some-identifiers
  introduce-subtle-bugs
  is-bug-free?
  debug
  copy-paste
  find)

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

(define (erase-some things dest)
  (information-edit (~a "erase some " things " from") dest))

(define (remove-some-identifiers dest)
  (information-edit "remove some identifiers from" (contents-of dest)))

(define (erase-some-identifiers dest)
  (information-edit "erase 2-4 identifiers from" (code-on dest))) ;TODO: use text formating to insert destination in the middle of string.

(define (hand-write info dest)
  (information-move "write" info dest))

(define (erase-all-from dest)
  (information-edit "erase all from" 
                    (contents-of dest)))

(define (erase-all-code-from dest #:clause [clause #f])
  (information-edit (~a "erase all code"
                        (if clause (~a clause " ") " ")
                        "from")
                    dest))


(define (blank? dest)
  (information-check "is blank" 
                     (contents-of dest)))


(define (type-up info dest)
  (information-move "type up" info dest))

(define (write-code)
  (body-action "write code"))

(define (copy-paste info source dest)
  (directed-action
   (directed-action
    (directed-action
     (body-action "copy/paste")
     "" info)
    "from" source)
  "into" dest))

(define (find info preposition dest)
  (directed-action
   (directed-action
    (body-action "find")
    "" info)
   preposition dest))

