#lang racket

(require raco/command-name)

(define ts-language-name
 (last (explode-path (current-directory)))
 #;(command-line
   #:program (short-program+command-name)
   #:args (kata-collection-name) 
   kata-collection-name))

(displayln (~a "Building " ts-language-name))

(displayln "Deleting kata compilation data")

(delete-directory/files	(build-path (current-directory) "examples" "compiled") #:must-exist? #f)
(delete-directory/files	(build-path (current-directory) "examples" "compiled-kata-data") #:must-exist? #f)

(displayln "Testing Katas and building API docs")

(system (~a "raco test -p " ts-language-name " && "
            "raco setup " ts-language-name))

(displayln "Done")


