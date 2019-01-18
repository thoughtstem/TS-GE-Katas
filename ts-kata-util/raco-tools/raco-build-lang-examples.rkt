#lang racket

(require raco/command-name)

(define ts-language-name
 (last (explode-path (current-directory))))

(displayln (~a "Building " ts-language-name))

(displayln "Compiling Examples, Running Examples as Tests, and building API docs...")

(system (~a "raco test examples.rkt " 
            " && "
            "raco setup --fast-clean " ts-language-name 
            " && "
            "raco setup  " ts-language-name 
            ))

(displayln "Done")


