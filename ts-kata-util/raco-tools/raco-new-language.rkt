#lang racket

(require raco/command-name
         racket/runtime-path)

(define-runtime-path base
  "prototype-lang")

(define ts-language
  (command-line
   #:args (name)
   name))

(displayln (~a "Creating " ts-language))

(directory-list base)

(define dest 
  (build-path (current-directory) ts-language))

(copy-directory/files base dest)

(define (string-sub-all! folder find replace)
  (define (string-sub f find replace)
    (define src-text (file->string (build-path folder f)))
    (define new-text (string-replace #:all? #t src-text find replace))

    (with-output-to-file #:exists 'replace
      (build-path folder f)
      (thunk
        (display new-text))))

  (define files
    (filter (lambda(f)
              (file-exists? (build-path folder f))) 
              (directory-list folder)))

  (for ([file (in-list files)])
    ;(displayln (~a "Found replacement? " file))
    (string-sub file find replace)))

(string-sub-all! dest
  "LANGUAGE-NAME" ts-language)

(string-sub-all! (build-path dest "examples")
  "LANGUAGE-NAME" ts-language)

(string-sub-all! (build-path dest "scribblings")
  "LANGUAGE-NAME" ts-language)


(displayln (~a "Created " ts-language))
(displayln (~a "Next steps:"))
(displayln (~a "cd " ts-language "; raco pkg install; raco build-lang-examples"))
