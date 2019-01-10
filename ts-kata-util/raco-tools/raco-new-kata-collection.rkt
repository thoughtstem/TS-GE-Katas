#lang racket

(require raco/command-name
         racket/runtime-path)

(define-runtime-path base
  "prototype-kata-collection")

(define ts-kata-collection-name
  (command-line
   #:args (name)
   name))

(displayln (~a "Creating " ts-kata-collection-name))

(directory-list base)

(copy-directory/files
  base
  (build-path (current-directory) ts-kata-collection-name))


(displayln (~a "Created " ts-kata-collection-name))
(displayln (~a "Next steps:"))
(displayln (~a "cd " ts-kata-collection-name "; raco pkg install; raco build-kata-docs"))
