#lang racket

(require raco/command-name)

(define ts-kata-collection-name
 (last (explode-path (current-directory))))

(displayln (~a "Building " ts-kata-collection-name))

(displayln "Deleting last compiled Scribble documentation folder: ./doc")

(delete-directory/files	(build-path (current-directory) "doc") #:must-exist? #f)

(displayln (~a "Rebuilding the docs with 'raco setup " ts-kata-collection-name "'"))

(system "raco pkg install")
(system (~a "raco setup " ts-kata-collection-name))

(displayln "Done")


