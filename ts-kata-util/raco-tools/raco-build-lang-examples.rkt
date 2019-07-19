#lang racket

(require raco/command-name
         net/sendurl)

(define ts-language-name
 (last (explode-path (current-directory))))

(displayln (~a "Building " ts-language-name))

(displayln "Compiling Examples, Running Examples as Tests, and building API docs...")

(and
  (system (~a "raco test examples.rkt " 
              " && "
              "raco setup --fast-clean " ts-language-name 
              " && "
              ;"raco setup  " ts-language-name "/assets" "&&"
              "raco setup  " ts-language-name 
              ))

  (send-url (~a "file://"
                     (build-path (current-directory) "doc/manual/index.html"))))

(displayln "Done")


