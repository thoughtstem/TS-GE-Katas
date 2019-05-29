#lang racket

(provide reformat-program)

(require (only-in framework racket:text%))


;Takes a full racket program, starting with a #lang line, as a string,
;reformats it in a cannonical way.
(define (reformat-program s)

  (define ss (string-split s "\n"))

  (define lang-line (first ss))

  (define program (string-join (rest ss) "\n\n"))

  (define reformatted-program (reformat-string program))

  (fix-indentation
    (~a lang-line "\n" reformatted-program)))

(define (reformat-string s)
  (define formatted (pretty-format-datum
                      (read (open-input-string (~a "(begin" s ")")))))

  (define (trim-nonsense s)
    (substring s
               7
               (sub1 (string-length s))))

  (trim-nonsense formatted))


(define racket-text (new racket:text%))

(define (fix-indentation s)
  (send racket-text erase)
  (send racket-text insert s)
  (send racket-text tabify-all)
  (post-process
    (send racket-text get-text)))


(define (post-process s) 
  ;The fixes for things like posn and make-icon are defined in special-printing-forms
  (collapse-leaves s))

(define (pretty-format-datum d)
  (define too-many-line-breaks (pretty-format d 0))

  (define (fix-line-breaks s)
    (regexp-replace* #px"(#:\\S*)\\s*" s "\\1 "))

  (fix-indentation (fix-line-breaks too-many-line-breaks)))


;The manual one-liner constructions are cool, but maybe we can take a stab at the more general algorithm for fixing things.   The best is: If a leaf node can be collapsed in a way that causes the overall "area" (rows * cols) of the string to be reduced, it should do so.

(define (collapse-leaves s)
  (define leaf-positions
    (regexp-match-positions* 
      (pregexp (~a "\\([^()]*\\)")) ;Any parens that have no parens inside...
      s))

  ;Collapse any leafs that actually reduce the area of the string
  (foldl collapse-leaf-if-helpful
         s
         leaf-positions))

(define (collapse-leaf-if-helpful p s)
  (define collapsed (collapse-leaf p s)) 

  (if (<= (string-area collapsed)
          (string-area s))
    collapsed
    s))

(define (collapse-leaf p s)
  (define sub (substring s (car p) (cdr p)))

  (string-append
    (substring s 0 (car p))
    (regexp-replace* #px"\\s+" sub " ")   
    (substring s (cdr p))))


(define (string-area s)
  (* (string-rows s)
     (string-cols s)))

(define (string-rows s)
  (length (string-split s "\n")))

(define (string-cols s)
  (apply max (map string-length (string-split s "\n"))))

;This constructs a string->string function that will fix any substring "(form ...)" that is split over multiple lines.  It will be converted to a one-liner instead.
(define (one-liner form)
  (lambda (s) 
    (regexp-replace* (pregexp (~a "\\(" form "[^()]*\\)"))  
                     s 
                     (lambda (all)
                       (regexp-replace* #px"\\s+" all " ")))))
