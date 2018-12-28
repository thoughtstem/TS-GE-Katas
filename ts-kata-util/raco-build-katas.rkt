#lang racket

(require raco/command-name)

(define kata-collection-name
 (last (explode-path (current-directory)))
 #;(command-line
   #:program (short-program+command-name)
   #:args (kata-collection-name) 
   kata-collection-name))

(displayln (~a "Building " kata-collection-name))

(displayln "Deleting kata compilation data")

(delete-directory/files	(build-path (current-directory) "examples" "compiled") #:must-exist? #f)
(delete-directory/files	(build-path (current-directory) "examples" "compiled-kata-data") #:must-exist? #f)

(displayln "Testing Katas and building API docs")

(system (~a "raco test -p " kata-collection-name " && "
            "raco setup " kata-collection-name))

(displayln "Done")


