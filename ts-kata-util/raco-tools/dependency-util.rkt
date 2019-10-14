#lang racket

(provide topological-sort
         is-collection?
         collections-here
         get-deps
         get-local-deps)

(require setup/getinfo
         pkg/lib)

(define (collections-here)
  (map ~a
       (filter is-collection?
               (directory-list (current-directory)))))


(define (get-local-deps path (root (current-directory)))
  (define locals (map ~a (directory-list root)))

  (filter
   (curryr member locals)
   (get-deps path root)))

(define (get-deps path (root (current-directory)))
  (map extract-pkg-name-if-github
       (map ~a
            (extract-pkg-dependencies
              (get-info/full (build-path root path))))))

(define (extract-pkg-name-if-github s)

  (if (not (string-contains? s "github"))
    s
    (begin
      (when (and (string-contains? s "github")
                 (not (string-contains? s "\\.git")))
        (displayln s)
        (error "Remember: Github dependencies must have a .git in the URL"))
      (if (string-contains? s "path=")
        (second (regexp-match #px"path=(.*)" s))
        (second (regexp-match #px"https://github.com/.*/(.*).git" s))))))

(module+ test
  (require rackunit) 

  (check-equal?
    (extract-pkg-name-if-github "something") 
    "something")

  (check-equal?
    (extract-pkg-name-if-github "https://github.com/thoughtstem/TS-K2-Languages.git?path=healer-lib") 
    "healer-lib")

  (check-equal?
    (extract-pkg-name-if-github "https://github.com/thoughtstem/ratchet.git")
    "ratchet"))

(define (find-independent root paths)
  (define (independent? path)
    (define other-dependencies
      (map
       (curry string-append root)
       (flatten
        (map (curryr get-deps root)
             (filter-not (curry eq? path) paths)))))

    (not (member (string-append root path)
                 other-dependencies)))

  (findf independent? paths))

(define (topological-sort paths (root (current-directory))  (ret '()))
  (if (empty? paths)
      ret
      (let ([p (find-independent (~a root) paths)])
        (topological-sort (filter-not (curry eq? p) paths)
                          (~a root)
                          (cons p ret)))))

(define (is-collection? dir)
  (and (directory-exists? dir)
       (not (string-prefix? (~a dir) "protoype"))
       (member (build-path "info.rkt")
               (directory-list dir))))


(module+ test
  (require rackunit)

  (check-equal?
   '("ts-kata-util" "ts-fundamentals" "ts-coach")
   (topological-sort (list "ts-coach"
                           "ts-kata-util"
                           "ts-fundamentals")
                     (build-path "/Users/thoughtstem/Dev/TS/TS-Kata-Collections/")
                     )))

