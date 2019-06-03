#lang racket

(provide get-ids-with-frequency
         get-asset-ids
         total-cards
         CURRENT-LANGUAGE
         CURRENT-LANGUAGE-EXAMPLES
         FILTER-BY-COLLECTION
         ASSET-PATH
         resolves-to?
         (struct-out identifier))

(require (only-in racket/hash hash-union)
         (except-in ts-kata-util/katas/main
                    read))

(define CURRENT-LANGUAGE          (make-parameter #f))
(define CURRENT-LANGUAGE-EXAMPLES (make-parameter #f))
(define FILTER-BY-COLLECTION (make-parameter #f))
(define ASSET-PATH          (make-parameter #f))

(struct identifier (id frequency corpus-frequency))


;Here we detect if the program p appears in any of the katas ks.  Just need to unpack the kata programs, which are stored as strings.

;Should this kind of thing to into ts-kata-util (yes)?  And should we document it (yes)?
(define (kata->program k)
  (define d 
    (expression-data (response-data (kata-response k))))

  ;Hack for k2
  (when (list? d)
    (set! d  (expression-data (first d))))

  
  (read
    (open-input-string
      (~a 
        "("
        (string-join 
          (rest (string-split d "\n"))
          "\n")
        ")"))))

(define (matches-kata-from? ks p)
  (define kps (map kata->program 
                   (filter ->code? (kata-collection-katas ks))))  

  (define ret
    (member p kps equal?))

  ret)

;Here we remove any item from ps if there is not some matching kata in FILTER-BY-COLLECTION
(define (do-collection-filter ps)
  (filter (curry matches-kata-from? (FILTER-BY-COLLECTION)) ps))

(define (get-example-codes path)
  (dynamic-require path #f)

  (define-values (ret unk) 
    (module->exports path))

  (define programs
    (map
      (compose 
        (curryr drop 3) ;To get rid of the (module __ __ ...) 
        syntax->datum  
        (curry example-name->code path))
      (map first
           (rest (first ret)))))

  (if (not (FILTER-BY-COLLECTION))
    programs   
    (do-collection-filter programs)))

(define (get-asset-ids [path (or
                              (ASSET-PATH)
                              (string->symbol (~a (CURRENT-LANGUAGE) "/assets")))])
  (dynamic-require path #f)
  
  (define-values (vars stxs)
    (module->exports path))

  (map first
         (append
           (if (empty? vars) 
             '()
             (rest (first vars)))
           (if (empty? stxs)
             '()
             (rest (first stxs))))))

(define (resolve id)
  (dynamic-require (CURRENT-LANGUAGE) id))

(define (resolves-to? contract)
  (lambda (id)
    (define thing (resolve id))
    (contract thing)))

(define (example-name->code path en)
  (dynamic-require path en))

(define (add-function-defs-to-user-defined l)
  (when 
    (and (list? l)
         (< 1 (length l))
         (list? (second l))
         (eq? 'define (first l))) 
    (set! user-defined (cons (first (second l))
                             user-defined))))

(define (add-constant-defs-to-user-defined l)
  (when 
    (and (list? l)
         (< 1 (length l))
         (eq? 'define (first l))) 
    (set! user-defined (cons (second l) 
                             user-defined))))

(define user-defined '())
(define (redact-non-identifiers l )
  (add-function-defs-to-user-defined l)
  (add-constant-defs-to-user-defined l)


  (cond
    [(string? l) '_____]
    [(string-prefix? (~a l) "#:") '_____]
    [(boolean? l) '_____]
    [(number? l) '_____]
    [(member l user-defined) '_____]
    [(and (list? l)
          (eq? 'quote (first l))) 
     '_____]
    [(list? l) (map redact-non-identifiers l)]
    [else l]))

(define (merge-freq-hashes h1 h2)
  ;Take the max so that we get the property that a union of the frequency hashes for each example gives one frequency hash that (if you printed each identifier as many times as its frequency) then you'll have a deck of cards that contains enough identifiers to do any single example.
  (hash-union h1 h2
              #:combine/key (lambda (k v1 v2) (max v1 v2))) )

(define (filter-redacted l)
  (filter (negate (curry eq? '_____)) l))



(define (get-ids-with-frequency 
          (examples-path       (or 
                                 (CURRENT-LANGUAGE-EXAMPLES)
                                 (string->symbol (~a (CURRENT-LANGUAGE) "/examples"))))
          (filter-func           (const #t)))

  (define codes (get-example-codes examples-path))

  (define freq-hashes (map 
                        (compose frequency-hash
                                 filter-redacted 
                                 flatten
                                 redact-non-identifiers) 
                        (filter filter-func codes)))

  (frequency-hash->list
    (foldl merge-freq-hashes 
           (first freq-hashes) 
           (rest freq-hashes))
    (flatten codes)))

;Takes a frequency hash, turns it into a list of (identifier ...) structs,
;  additionally sorts by how many times the identifier appears in the corpus 
(define (frequency-hash->list h (corpus '()))
  (define l (hash->list h))  

  (define (p->id-with-freq p) 
    (identifier (car p) 
                (cdr p) 
                (length (indexes-of corpus (car p))) ;Num occurances
                ))

  (sort 
    (map p->id-with-freq l)
    >
    #:key identifier-corpus-frequency))

(define (frequency-hash l (h (hash)))
  (if (empty? l) 
    h
    (frequency-hash (rest l)
                    (if (hash-has-key? h (first l))
                        (hash-update h (first l) add1)
                        (hash-set h (first l) 1)))))


(define (total-cards frequency-list)
  (apply + (map second frequency-list)))



