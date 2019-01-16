#lang racket

(require raco/command-name)

(define ts-language-name
 (last (explode-path (current-directory))))

(displayln (~a "Building " ts-language-name))

(delete-directory/files	(build-path (current-directory) "examples" "compiled") #:must-exist? #f)
(delete-directory/files	(build-path (current-directory) "examples" "compiled-example-data") #:must-exist? #f)

(displayln "Compiling Examples, Running Examples as Tests, and building API docs...")

(system (~a "raco test examples " #;ts-language-name 
            " && "
            "raco setup -c " ts-language-name 
            ))

(displayln "Done")


